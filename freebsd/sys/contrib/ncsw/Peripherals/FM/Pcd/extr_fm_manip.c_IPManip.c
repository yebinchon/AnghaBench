
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int p_Frag; } ;
struct TYPE_8__ {scalar_t__ frag; scalar_t__ sizeForFragmentation; scalar_t__ physicalMuramBase; TYPE_1__ fragParams; scalar_t__ h_Ad; struct TYPE_8__* h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdManip ;
typedef TYPE_2__ t_FmPcd ;
typedef int t_Error ;
struct TYPE_9__ {int gmask; int ccAdBase; int pcAndOffsets; } ;
typedef TYPE_4__ t_AdOfTypeContLookup ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int FM_PCD_AD_CONT_LOOKUP_TYPE ;
 int FM_PCD_MANIP_IP_CNIA ;
 int FM_PCD_MANIP_IP_MTU_SHIFT ;
 int FM_PCD_MANIP_IP_NO_FRAGMENTATION ;
 int HMAN_OC_IP_MANIP ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 scalar_t__ TRUE ;
 int WRITE_UINT32 (int ,int) ;
 scalar_t__ XX_VirtToPhys (int ) ;

__attribute__((used)) static t_Error IPManip(t_FmPcdManip *p_Manip)
{
    t_Error err = E_OK;
    t_FmPcd *p_FmPcd;
    t_AdOfTypeContLookup *p_Ad;
    uint32_t tmpReg32 = 0, tmpRegNia = 0;

    SANITY_CHECK_RETURN_ERROR(p_Manip, E_INVALID_HANDLE);
    p_FmPcd = p_Manip->h_FmPcd;
    SANITY_CHECK_RETURN_ERROR(p_FmPcd, E_INVALID_HANDLE);

    p_Ad = (t_AdOfTypeContLookup *)p_Manip->h_Ad;

    tmpReg32 = FM_PCD_MANIP_IP_NO_FRAGMENTATION;
    if (p_Manip->frag == TRUE)
    {
        tmpRegNia = (uint32_t)(XX_VirtToPhys(p_Manip->fragParams.p_Frag)
                - (p_FmPcd->physicalMuramBase));
        tmpReg32 = (uint32_t)p_Manip->sizeForFragmentation
                << FM_PCD_MANIP_IP_MTU_SHIFT;
    }

    tmpRegNia |= FM_PCD_AD_CONT_LOOKUP_TYPE;
    tmpReg32 |= HMAN_OC_IP_MANIP;





    WRITE_UINT32(p_Ad->pcAndOffsets, tmpReg32);
    WRITE_UINT32(p_Ad->ccAdBase, tmpRegNia);
    WRITE_UINT32(p_Ad->gmask, 0);


    return err;
}
