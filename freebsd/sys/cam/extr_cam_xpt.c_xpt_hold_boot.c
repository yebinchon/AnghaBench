
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buses_to_config; } ;


 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;
 TYPE_1__ xsoftc ;

void
xpt_hold_boot(void)
{
 xpt_lock_buses();
 xsoftc.buses_to_config++;
 xpt_unlock_buses();
}
