
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tr_flags; } ;


 size_t COUNTOF (TYPE_1__*) ;
 int EVNT_UNSPEC ;
 scalar_t__ ctl_auth_keyid ;
 int ctl_clr_stats () ;
 int ctl_sys_last_event ;
 scalar_t__ ctl_sys_num_events ;
 TYPE_1__* ctl_traps ;
 scalar_t__ num_ctl_traps ;
 int uname (int *) ;
 int utsnamebuf ;

void
init_control(void)
{
 size_t i;





 ctl_clr_stats();

 ctl_auth_keyid = 0;
 ctl_sys_last_event = EVNT_UNSPEC;
 ctl_sys_num_events = 0;

 num_ctl_traps = 0;
 for (i = 0; i < COUNTOF(ctl_traps); i++)
  ctl_traps[i].tr_flags = 0;
}
