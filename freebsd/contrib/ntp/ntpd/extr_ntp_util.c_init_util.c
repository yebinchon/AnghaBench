
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atexit (int *) ;
 int clockstats ;
 int cryptostats ;
 int filegen_register (int ,char*,int *) ;
 int loopstats ;
 int ntpd_time_stepped ;
 int peerstats ;
 int protostats ;
 int rawstats ;
 int statsdir ;
 int * step_callback ;
 int sysstats ;
 int timingstats ;
 int uninit_util ;

void
init_util(void)
{
 filegen_register(statsdir, "peerstats", &peerstats);
 filegen_register(statsdir, "loopstats", &loopstats);
 filegen_register(statsdir, "clockstats", &clockstats);
 filegen_register(statsdir, "rawstats", &rawstats);
 filegen_register(statsdir, "sysstats", &sysstats);
 filegen_register(statsdir, "protostats", &protostats);
 filegen_register(statsdir, "cryptostats", &cryptostats);
 filegen_register(statsdir, "timingstats", &timingstats);




 step_callback = &ntpd_time_stepped;



}
