
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_SPECIALREG (int ,int ) ;
 int dbg_monitor_init () ;
 int oslar_el1 ;

void
dbg_init(void)
{


 WRITE_SPECIALREG(oslar_el1, 0);


 dbg_monitor_init();


}
