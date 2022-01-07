
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int DUMMY_PORT_ID ;
 int FM_KG_KGAR_GO ;
 int FM_KG_KGAR_READ ;
 int FM_KG_KGAR_SCM_WSEL_UPDATE_CNT ;
 int FM_KG_KGAR_SEL_SCHEME_ENTRY ;
 int FM_PCD_KG_KGAR_NUM_SHIFT ;

uint32_t FmPcdKgBuildReadSchemeActionReg(uint8_t schemeId)
{
    return (uint32_t)(((uint32_t)schemeId << FM_PCD_KG_KGAR_NUM_SHIFT) |
                      FM_KG_KGAR_GO |
                      FM_KG_KGAR_READ |
                      FM_KG_KGAR_SEL_SCHEME_ENTRY |
                      DUMMY_PORT_ID |
                      FM_KG_KGAR_SCM_WSEL_UPDATE_CNT);

}
