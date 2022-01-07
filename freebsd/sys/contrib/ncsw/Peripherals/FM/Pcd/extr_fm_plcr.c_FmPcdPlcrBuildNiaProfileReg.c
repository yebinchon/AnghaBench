
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int FM_PCD_PLCR_PAR_PWSEL_PEGNIA ;
 int FM_PCD_PLCR_PAR_PWSEL_PERNIA ;
 int FM_PCD_PLCR_PAR_PWSEL_PEYNIA ;

uint32_t FmPcdPlcrBuildNiaProfileReg(bool green, bool yellow, bool red)
{

    uint32_t tmpReg32 = 0;

    if (green)
        tmpReg32 |= FM_PCD_PLCR_PAR_PWSEL_PEGNIA;
    if (yellow)
        tmpReg32 |= FM_PCD_PLCR_PAR_PWSEL_PEYNIA;
    if (red)
        tmpReg32 |= FM_PCD_PLCR_PAR_PWSEL_PERNIA;

    return tmpReg32;
}
