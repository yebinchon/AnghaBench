
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct neighbor_report {int regulatory_class; int channel_number; int phy_type; int freq; int bssid_info; int bssid; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WPA_GET_LE32 (int const*) ;
 int os_memcpy (int ,int const*,int) ;
 int wnm_nei_get_chan (struct wpa_supplicant*,int,int) ;
 int wnm_parse_neighbor_report_elem (struct neighbor_report*,int,int,int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void wnm_parse_neighbor_report(struct wpa_supplicant *wpa_s,
          const u8 *pos, u8 len,
          struct neighbor_report *rep)
{
 u8 left = len;

 if (left < 13) {
  wpa_printf(MSG_DEBUG, "WNM: Too short neighbor report");
  return;
 }

 os_memcpy(rep->bssid, pos, ETH_ALEN);
 rep->bssid_info = WPA_GET_LE32(pos + ETH_ALEN);
 rep->regulatory_class = *(pos + 10);
 rep->channel_number = *(pos + 11);
 rep->phy_type = *(pos + 12);

 pos += 13;
 left -= 13;

 while (left >= 2) {
  u8 id, elen;

  id = *pos++;
  elen = *pos++;
  wpa_printf(MSG_DEBUG, "WNM: Subelement id=%u len=%u", id, elen);
  left -= 2;
  if (elen > left) {
   wpa_printf(MSG_DEBUG,
       "WNM: Truncated neighbor report subelement");
   break;
  }
  wnm_parse_neighbor_report_elem(rep, id, elen, pos);
  left -= elen;
  pos += elen;
 }

 rep->freq = wnm_nei_get_chan(wpa_s, rep->regulatory_class,
         rep->channel_number);
}
