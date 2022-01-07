
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOGTOD (int ) ;
 int clock_jitter ;
 scalar_t__ clock_minstep ;
 int freq_cnt ;
 int ntp_minpoll ;
 int sys_poll ;
 int sys_precision ;

void
init_loopfilter(void)
{



 sys_poll = ntp_minpoll;
 clock_jitter = LOGTOD(sys_precision);
 freq_cnt = (int)clock_minstep;
}
