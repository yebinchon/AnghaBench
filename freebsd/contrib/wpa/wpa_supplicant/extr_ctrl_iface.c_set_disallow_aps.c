
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_ssid_value {int ssid_len; int ssid; } ;
typedef struct wpa_ssid_value u8 ;
struct TYPE_2__ {scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {size_t disallow_aps_bssid_count; size_t disallow_aps_ssid_count; scalar_t__ wpa_state; int reassociate; int own_disconnect_req; TYPE_1__ sme; int bssid; struct wpa_ssid* current_ssid; struct wpa_ssid_value* disallow_aps_ssid; struct wpa_ssid_value* disallow_aps_bssid; } ;
struct wpa_ssid {scalar_t__ mode; int ssid_len; int ssid; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int SSID_MAX_LEN ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 scalar_t__ WPAS_MODE_IBSS ;
 scalar_t__ WPAS_MODE_INFRA ;
 scalar_t__ WPA_AUTHENTICATING ;
 int disallowed_bssid (struct wpa_supplicant*,int ) ;
 int disallowed_ssid (struct wpa_supplicant*,int ,int ) ;
 scalar_t__ hexstr2bin (char*,int ,int) ;
 int hwaddr_aton2 (char*,struct wpa_ssid_value*) ;
 int os_free (struct wpa_ssid_value*) ;
 int os_memcpy (struct wpa_ssid_value*,struct wpa_ssid_value*,int) ;
 struct wpa_ssid_value* os_realloc_array (struct wpa_ssid_value*,size_t,int) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int wpa_hexdump (int ,char*,struct wpa_ssid_value*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;

__attribute__((used)) static int set_disallow_aps(struct wpa_supplicant *wpa_s, char *val)
{
 char *pos;
 u8 addr[ETH_ALEN], *bssid = ((void*)0), *n;
 struct wpa_ssid_value *ssid = ((void*)0), *ns;
 size_t count = 0, ssid_count = 0;
 struct wpa_ssid *c;







 pos = val;
 while (pos) {
  if (*pos == '\0')
   break;
  if (os_strncmp(pos, "bssid ", 6) == 0) {
   int res;
   pos += 6;
   res = hwaddr_aton2(pos, addr);
   if (res < 0) {
    os_free(ssid);
    os_free(bssid);
    wpa_printf(MSG_DEBUG, "Invalid disallow_aps "
        "BSSID value '%s'", pos);
    return -1;
   }
   pos += res;
   n = os_realloc_array(bssid, count + 1, ETH_ALEN);
   if (n == ((void*)0)) {
    os_free(ssid);
    os_free(bssid);
    return -1;
   }
   bssid = n;
   os_memcpy(bssid + count * ETH_ALEN, addr, ETH_ALEN);
   count++;
  } else if (os_strncmp(pos, "ssid ", 5) == 0) {
   char *end;
   pos += 5;

   end = pos;
   while (*end) {
    if (*end == '\0' || *end == ' ')
     break;
    end++;
   }

   ns = os_realloc_array(ssid, ssid_count + 1,
           sizeof(struct wpa_ssid_value));
   if (ns == ((void*)0)) {
    os_free(ssid);
    os_free(bssid);
    return -1;
   }
   ssid = ns;

   if ((end - pos) & 0x01 ||
       end - pos > 2 * SSID_MAX_LEN ||
       hexstr2bin(pos, ssid[ssid_count].ssid,
           (end - pos) / 2) < 0) {
    os_free(ssid);
    os_free(bssid);
    wpa_printf(MSG_DEBUG, "Invalid disallow_aps "
        "SSID value '%s'", pos);
    return -1;
   }
   ssid[ssid_count].ssid_len = (end - pos) / 2;
   wpa_hexdump_ascii(MSG_DEBUG, "disallow_aps SSID",
       ssid[ssid_count].ssid,
       ssid[ssid_count].ssid_len);
   ssid_count++;
   pos = end;
  } else {
   wpa_printf(MSG_DEBUG, "Unexpected disallow_aps value "
       "'%s'", pos);
   os_free(ssid);
   os_free(bssid);
   return -1;
  }

  pos = os_strchr(pos, ' ');
  if (pos)
   pos++;
 }

 wpa_hexdump(MSG_DEBUG, "disallow_aps_bssid", bssid, count * ETH_ALEN);
 os_free(wpa_s->disallow_aps_bssid);
 wpa_s->disallow_aps_bssid = bssid;
 wpa_s->disallow_aps_bssid_count = count;

 wpa_printf(MSG_DEBUG, "disallow_aps_ssid_count %d", (int) ssid_count);
 os_free(wpa_s->disallow_aps_ssid);
 wpa_s->disallow_aps_ssid = ssid;
 wpa_s->disallow_aps_ssid_count = ssid_count;

 if (!wpa_s->current_ssid || wpa_s->wpa_state < WPA_AUTHENTICATING)
  return 0;

 c = wpa_s->current_ssid;
 if (c->mode != WPAS_MODE_INFRA && c->mode != WPAS_MODE_IBSS)
  return 0;

 if (!disallowed_bssid(wpa_s, wpa_s->bssid) &&
     !disallowed_ssid(wpa_s, c->ssid, c->ssid_len))
  return 0;

 wpa_printf(MSG_DEBUG, "Disconnect and try to find another network "
     "because current AP was marked disallowed");




 wpa_s->reassociate = 1;
 wpa_s->own_disconnect_req = 1;
 wpa_supplicant_deauthenticate(wpa_s, WLAN_REASON_DEAUTH_LEAVING);
 wpa_supplicant_req_scan(wpa_s, 0, 0);

 return 0;
}
