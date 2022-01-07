
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_char ;
struct TYPE_2__ {scalar_t__ sstclktype; size_t refclktype; } ;


 size_t COUNTOF (scalar_t__*) ;
 scalar_t__ CTL_SST_TS_NTP ;
 scalar_t__ CTL_SST_TS_UNSPEC ;
 int CTL_SYS_STATUS (int ,scalar_t__,int ,int ) ;
 scalar_t__* clocktypes ;
 int ctl_sys_last_event ;
 int ctl_sys_num_events ;
 int sys_leap ;
 TYPE_1__* sys_peer ;

u_short
ctlsysstatus(void)
{
 register u_char this_clock;

 this_clock = CTL_SST_TS_UNSPEC;
 if (sys_peer != 0)
  this_clock = CTL_SST_TS_NTP;

 return CTL_SYS_STATUS(sys_leap, this_clock, ctl_sys_num_events,
         ctl_sys_last_event);
}
