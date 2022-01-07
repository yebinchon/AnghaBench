
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FALSE ;
 int FM_PCD_PLCR_PEMODE_PI ;
 int TRUE ;

bool FmPcdPlcrHwProfileIsValid(uint32_t profileModeReg)
{

    if (profileModeReg & FM_PCD_PLCR_PEMODE_PI)
        return TRUE;
    else
        return FALSE;
}
