
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int FM_KG_KGAR_GO ;
 int FM_KG_KGAR_WRITE ;
 int FM_PCD_KG_KGAR_SEL_PORT_ENTRY ;
 int FM_PCD_KG_KGAR_SEL_PORT_WSEL_SP ;

uint32_t FmPcdKgBuildWritePortSchemeBindActionReg(uint8_t hardwarePortId)
{

    return (uint32_t)(FM_KG_KGAR_GO |
                      FM_KG_KGAR_WRITE |
                      FM_PCD_KG_KGAR_SEL_PORT_ENTRY |
                      hardwarePortId |
                      FM_PCD_KG_KGAR_SEL_PORT_WSEL_SP);
}
