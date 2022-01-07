
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef int u16 ;
struct wmm_tspec_element {int* ts_info; int medium_time; int surplus_bandwidth_allowance; int minimum_phy_rate; int nominal_msdu_size; int mean_data_rate; } ;


 int MSG_DEBUG ;
 int WMM_ADDTS_STATUS_ADMISSION_ACCEPTED ;
 int WMM_ADDTS_STATUS_INVALID_PARAMETERS ;
 int WMM_ADDTS_STATUS_REFUSED ;
 int host_to_le16 (unsigned int) ;
 int le_to_host16 (int ) ;
 int le_to_host32 (int ) ;
 int wpa_printf (int ,char*,...) ;

int wmm_process_tspec(struct wmm_tspec_element *tspec)
{
 u64 medium_time;
 unsigned int pps, duration;
 unsigned int up, psb, dir, tid;
 u16 val, surplus;

 up = (tspec->ts_info[1] >> 3) & 0x07;
 psb = (tspec->ts_info[1] >> 2) & 0x01;
 dir = (tspec->ts_info[0] >> 5) & 0x03;
 tid = (tspec->ts_info[0] >> 1) & 0x0f;
 wpa_printf(MSG_DEBUG, "WMM: TS Info: UP=%d PSB=%d Direction=%d TID=%d",
     up, psb, dir, tid);
 val = le_to_host16(tspec->nominal_msdu_size);
 wpa_printf(MSG_DEBUG, "WMM: Nominal MSDU Size: %d%s",
     val & 0x7fff, val & 0x8000 ? " (fixed)" : "");
 wpa_printf(MSG_DEBUG, "WMM: Mean Data Rate: %u bps",
     le_to_host32(tspec->mean_data_rate));
 wpa_printf(MSG_DEBUG, "WMM: Minimum PHY Rate: %u bps",
     le_to_host32(tspec->minimum_phy_rate));
 val = le_to_host16(tspec->surplus_bandwidth_allowance);
 wpa_printf(MSG_DEBUG, "WMM: Surplus Bandwidth Allowance: %u.%04u",
     val >> 13, 10000 * (val & 0x1fff) / 0x2000);

 val = le_to_host16(tspec->nominal_msdu_size);
 if (val == 0) {
  wpa_printf(MSG_DEBUG, "WMM: Invalid Nominal MSDU Size (0)");
  return WMM_ADDTS_STATUS_INVALID_PARAMETERS;
 }

 pps = ((le_to_host32(tspec->mean_data_rate) / 8) + val - 1) / val;
 wpa_printf(MSG_DEBUG, "WMM: Packets-per-second estimate for TSPEC: %d",
     pps);

 if (le_to_host32(tspec->minimum_phy_rate) < 1000000) {
  wpa_printf(MSG_DEBUG, "WMM: Too small Minimum PHY Rate");
  return WMM_ADDTS_STATUS_INVALID_PARAMETERS;
 }

 duration = (le_to_host16(tspec->nominal_msdu_size) & 0x7fff) * 8 /
  (le_to_host32(tspec->minimum_phy_rate) / 1000000) +
  50 ;



 surplus = le_to_host16(tspec->surplus_bandwidth_allowance);
 if (surplus <= 0x2000) {
  wpa_printf(MSG_DEBUG, "WMM: Surplus Bandwidth Allowance not "
      "greater than unity");
  return WMM_ADDTS_STATUS_INVALID_PARAMETERS;
 }

 medium_time = (u64) surplus * pps * duration / 0x2000;
 wpa_printf(MSG_DEBUG, "WMM: Estimated medium time: %lu",
     (unsigned long) medium_time);







 if (medium_time > 750000) {
  wpa_printf(MSG_DEBUG, "WMM: Refuse TSPEC request for over "
      "75%% of available bandwidth");
  return WMM_ADDTS_STATUS_REFUSED;
 }


 tspec->medium_time = host_to_le16(medium_time / 32);

 return WMM_ADDTS_STATUS_ADMISSION_ACCEPTED;
}
