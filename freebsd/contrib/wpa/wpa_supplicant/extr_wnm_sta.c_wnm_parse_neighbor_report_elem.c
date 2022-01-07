
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct neighbor_report {int tsf_present; int country_present; int preference; int preference_present; int bss_term_present; int bearing_present; int rm_capab_present; TYPE_1__* mul_bssid; int rm_capab; TYPE_1__* meas_pilot; void* rel_height; int distance; void* bearing; void* bss_term_dur; int bss_term_tsf; int country; void* beacon_int; void* tsf_offset; } ;
struct multiple_bssid {int dummy; } ;
struct measurement_pilot {int dummy; } ;
struct TYPE_2__ {int measurement_pilot; int max_bssid_indicator; int subelems; int subelem_len; } ;


 int MSG_DEBUG ;
 void* WPA_GET_LE16 (int const*) ;
 int WPA_GET_LE32 (int const*) ;
 int WPA_GET_LE64 (int const*) ;
 int os_free (TYPE_1__*) ;
 int os_memcpy (int ,int const*,int) ;
 void* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wnm_parse_neighbor_report_elem(struct neighbor_report *rep,
        u8 id, u8 elen, const u8 *pos)
{
 switch (id) {
 case 128:
  if (elen < 2 + 2) {
   wpa_printf(MSG_DEBUG, "WNM: Too short TSF");
   break;
  }
  rep->tsf_offset = WPA_GET_LE16(pos);
  rep->beacon_int = WPA_GET_LE16(pos + 2);
  rep->tsf_present = 1;
  break;
 case 132:
  if (elen < 2) {
   wpa_printf(MSG_DEBUG, "WNM: Too short condensed "
       "country string");
   break;
  }
  os_memcpy(rep->country, pos, 2);
  rep->country_present = 1;
  break;
 case 133:
  if (elen < 1) {
   wpa_printf(MSG_DEBUG, "WNM: Too short BSS transition "
       "candidate");
   break;
  }
  rep->preference = pos[0];
  rep->preference_present = 1;
  break;
 case 134:
  if (elen < 10) {
   wpa_printf(MSG_DEBUG,
       "WNM: Too short BSS termination duration");
   break;
  }
  rep->bss_term_tsf = WPA_GET_LE64(pos);
  rep->bss_term_dur = WPA_GET_LE16(pos + 8);
  rep->bss_term_present = 1;
  break;
 case 135:
  if (elen < 8) {
   wpa_printf(MSG_DEBUG, "WNM: Too short neighbor "
       "bearing");
   break;
  }
  rep->bearing = WPA_GET_LE16(pos);
  rep->distance = WPA_GET_LE32(pos + 2);
  rep->rel_height = WPA_GET_LE16(pos + 2 + 4);
  rep->bearing_present = 1;
  break;
 case 131:
  if (elen < 1) {
   wpa_printf(MSG_DEBUG, "WNM: Too short measurement "
       "pilot");
   break;
  }
  os_free(rep->meas_pilot);
  rep->meas_pilot = os_zalloc(sizeof(struct measurement_pilot));
  if (rep->meas_pilot == ((void*)0))
   break;
  rep->meas_pilot->measurement_pilot = pos[0];
  rep->meas_pilot->subelem_len = elen - 1;
  os_memcpy(rep->meas_pilot->subelems, pos + 1, elen - 1);
  break;
 case 129:
  if (elen < 5) {
   wpa_printf(MSG_DEBUG, "WNM: Too short RRM enabled "
       "capabilities");
   break;
  }
  os_memcpy(rep->rm_capab, pos, 5);
  rep->rm_capab_present = 1;
  break;
 case 130:
  if (elen < 1) {
   wpa_printf(MSG_DEBUG, "WNM: Too short multiple BSSID");
   break;
  }
  os_free(rep->mul_bssid);
  rep->mul_bssid = os_zalloc(sizeof(struct multiple_bssid));
  if (rep->mul_bssid == ((void*)0))
   break;
  rep->mul_bssid->max_bssid_indicator = pos[0];
  rep->mul_bssid->subelem_len = elen - 1;
  os_memcpy(rep->mul_bssid->subelems, pos + 1, elen - 1);
  break;
 }
}
