
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLC_IMPORT ;
 int SLC_RVALUE ;
 int TELOPT_LINEMODE ;
 scalar_t__ my_state_is_will (int ) ;
 int slc_import (int) ;
 int slc_mode ;

void
slc_mode_import(int def)
{
    slc_mode = def ? SLC_IMPORT : SLC_RVALUE;
    if (my_state_is_will(TELOPT_LINEMODE))
 slc_import(def);
}
