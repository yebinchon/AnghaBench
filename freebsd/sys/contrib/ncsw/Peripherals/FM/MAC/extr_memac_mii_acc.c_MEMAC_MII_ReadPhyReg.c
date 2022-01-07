
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int enetMode; struct TYPE_4__* p_MiiMemMap; } ;
typedef TYPE_1__ t_Memac ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
typedef enum enet_speed { ____Placeholder_enet_speed } enet_speed ;


 scalar_t__ ENET_SPEED_FROM_MODE (int ) ;
 int E_INVALID_HANDLE ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int fman_memac_mii_read_phy_reg (TYPE_1__*,int ,int ,int *,int) ;

t_Error MEMAC_MII_ReadPhyReg(t_Handle h_Memac,
                            uint8_t phyAddr,
                            uint8_t reg,
                            uint16_t *p_Data)
{
    t_Memac *p_Memac = (t_Memac *)h_Memac;

    SANITY_CHECK_RETURN_ERROR(p_Memac, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Memac->p_MiiMemMap, E_INVALID_HANDLE);

    return fman_memac_mii_read_phy_reg(p_Memac->p_MiiMemMap,
                                       phyAddr,
                                       reg,
                                       p_Data,
                                       (enum enet_speed)ENET_SPEED_FROM_MODE(p_Memac->enetMode));
}
