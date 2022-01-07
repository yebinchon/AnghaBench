
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int FM_PCD_PLCR_PAR_GO ;
 int FM_PCD_PLCR_PAR_PNUM_SHIFT ;

uint32_t FmPcdPlcrBuildWritePlcrActionReg(uint16_t absoluteProfileId)
{
    return (uint32_t)(FM_PCD_PLCR_PAR_GO |
                      ((uint32_t)absoluteProfileId << FM_PCD_PLCR_PAR_PNUM_SHIFT));
}
