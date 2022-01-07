
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ MON_OFF ;
 scalar_t__ mon_enabled ;
 int mon_start (scalar_t__) ;
 int mon_stop (scalar_t__) ;
 int win_time_stepped () ;

void
ntpd_time_stepped(void)
{
 u_int saved_mon_enabled;





 if (MON_OFF != mon_enabled) {
  saved_mon_enabled = mon_enabled;
  mon_stop(MON_OFF);
  mon_start(saved_mon_enabled);
 }





}
