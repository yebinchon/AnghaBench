
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double CLOCK_PLL ;
 int DEBUG_INSIST (int) ;
 scalar_t__ EVNT_SYNC ;
 scalar_t__ FALSE ;
 double NTP_MAXFREQ ;
 scalar_t__ TRUE ;
 double ULOGTOD (int) ;
 int adj_systime (double) ;
 double clock_offset ;
 scalar_t__ clock_phi ;
 double drift_comp ;
 scalar_t__ enable_panic_check ;
 scalar_t__ freq_cnt ;
 scalar_t__ kern_enable ;
 scalar_t__ mode_ntpdate ;
 int ntp_enable ;
 scalar_t__ pll_control ;
 scalar_t__ state ;
 int sys_poll ;
 int sys_rootdisp ;

void
adj_host_clock(
 void
 )
{
 double offset_adj;
 double freq_adj;
 sys_rootdisp += clock_phi;

 if (!ntp_enable || mode_ntpdate)
  return;






 if (state != EVNT_SYNC) {
  offset_adj = 0.;
 } else if (freq_cnt > 0) {
  offset_adj = clock_offset / (CLOCK_PLL * ULOGTOD(1));
  freq_cnt--;




 } else {
  offset_adj = clock_offset / (CLOCK_PLL * ULOGTOD(sys_poll));
 }
  freq_adj = drift_comp;


 if (offset_adj + freq_adj > NTP_MAXFREQ)
  offset_adj = NTP_MAXFREQ - freq_adj;
 else if (offset_adj + freq_adj < -NTP_MAXFREQ)
  offset_adj = -NTP_MAXFREQ - freq_adj;

 clock_offset -= offset_adj;







 DEBUG_INSIST(enable_panic_check == TRUE);
 enable_panic_check = FALSE;
 adj_systime(offset_adj + freq_adj);
 enable_panic_check = TRUE;

}
