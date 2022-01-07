
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _netgr_yp_enabled ;
 int compat_state ;
 int netgr_endstate (int *) ;

__attribute__((used)) static void
_compat_clearstate(void)
{




 netgr_endstate(&compat_state);
}
