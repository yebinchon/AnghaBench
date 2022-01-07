
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLC_EXPORT ;
 int TELOPT_LINEMODE ;
 scalar_t__ my_state_is_will (int ) ;
 int slc_export () ;
 int slc_mode ;

void
slc_mode_export(void)
{
    slc_mode = SLC_EXPORT;
    if (my_state_is_will(TELOPT_LINEMODE))
 slc_export();
}
