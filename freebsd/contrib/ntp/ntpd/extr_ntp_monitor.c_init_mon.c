
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_DLIST (int ,int ) ;
 int MON_OFF ;
 int mon_enabled ;
 int mon_mru_list ;
 int mru ;

void
init_mon(void)
{




 mon_enabled = MON_OFF;
 INIT_DLIST(mon_mru_list, mru);
}
