
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int t_Handle ;
struct TYPE_11__ {int sizeForFragmentation; int dontFragAction; int sgBpid; int scratchBpid; scalar_t__ sgBpidEn; } ;
typedef TYPE_2__ t_FmPcdManipFragIpParams ;
struct TYPE_10__ {int scratchBpid; TYPE_5__* p_Frag; } ;
struct TYPE_12__ {int h_Ad; int sizeForFragmentation; TYPE_1__ fragParams; int frag; TYPE_4__* h_FmPcd; } ;
typedef TYPE_3__ t_FmPcdManip ;
struct TYPE_13__ {int h_FmMuram; scalar_t__ physicalMuramBase; int ipv6FrameIdAddr; } ;
typedef TYPE_4__ t_FmPcd ;
typedef int t_Error ;
struct TYPE_14__ {int gmask; int ccAdBase; int pcAndOffsets; } ;
typedef TYPE_5__ t_AdOfTypeContLookup ;


 int E_INVALID_HANDLE ;
 int E_INVALID_VALUE ;
 int E_NO_MEMORY ;
 int E_OK ;
 scalar_t__ FM_MURAM_AllocMem (int ,int ,int ) ;
 int FM_MURAM_FreeMem (int ,TYPE_5__*) ;
 int FM_PCD_AD_CONT_LOOKUP_TYPE ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 int FM_PCD_MANIP_IP_FRAG_DF_SHIFT ;
 int FM_PCD_MANIP_IP_FRAG_SCRATCH_BPID ;
 int FM_PCD_MANIP_IP_FRAG_SG_BDID_EN ;
 int FM_PCD_MANIP_IP_FRAG_SG_BDID_MASK ;
 int FM_PCD_MANIP_IP_FRAG_SG_BDID_SHIFT ;
 int FmPcdFragHcScratchPoolFill (int ,int) ;
 scalar_t__ HMAN_OC_IP_FRAGMENTATION ;
 int MAJOR ;
 int MemSet8 (TYPE_5__*,int ,int ) ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int,int ) ;
 int TRUE ;
 int UINT_TO_PTR (int ) ;
 int WRITE_UINT32 (int ,int) ;
 scalar_t__ XX_VirtToPhys (int ) ;

__attribute__((used)) static t_Error IpFragmentation(t_FmPcdManipFragIpParams *p_ManipParams,
                               t_FmPcdManip *p_Manip)
{
    uint32_t pcAndOffsetsReg = 0, ccAdBaseReg = 0, gmaskReg = 0;
    t_FmPcd *p_FmPcd;




    SANITY_CHECK_RETURN_ERROR(p_Manip->h_Ad, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_ManipParams->sizeForFragmentation != 0xFFFF,
                              E_INVALID_VALUE);

    p_FmPcd = p_Manip->h_FmPcd;

    p_Manip->fragParams.p_Frag = (t_AdOfTypeContLookup *)FM_MURAM_AllocMem(
            p_FmPcd->h_FmMuram, FM_PCD_CC_AD_ENTRY_SIZE,
            FM_PCD_CC_AD_TABLE_ALIGN);
    if (!p_Manip->fragParams.p_Frag)
        RETURN_ERROR(MAJOR, E_NO_MEMORY,
                     ("MURAM alloc for Fragmentation table descriptor"));
    MemSet8(p_Manip->fragParams.p_Frag, 0, FM_PCD_CC_AD_ENTRY_SIZE);


    pcAndOffsetsReg = (uint32_t)HMAN_OC_IP_FRAGMENTATION;


    ccAdBaseReg = FM_PCD_AD_CONT_LOOKUP_TYPE;
    ccAdBaseReg |= (p_ManipParams->dontFragAction
            << FM_PCD_MANIP_IP_FRAG_DF_SHIFT);



    if (p_ManipParams->sgBpidEn)
    {
        ccAdBaseReg |= FM_PCD_MANIP_IP_FRAG_SG_BDID_EN;
        pcAndOffsetsReg |= ((p_ManipParams->sgBpid
                << FM_PCD_MANIP_IP_FRAG_SG_BDID_SHIFT)
                & FM_PCD_MANIP_IP_FRAG_SG_BDID_MASK);
    }


    gmaskReg = (uint32_t)(XX_VirtToPhys(UINT_TO_PTR(p_FmPcd->ipv6FrameIdAddr))
            - p_FmPcd->physicalMuramBase);



    gmaskReg |= (0xFF) << FM_PCD_MANIP_IP_FRAG_SCRATCH_BPID;



    WRITE_UINT32(p_Manip->fragParams.p_Frag->pcAndOffsets, pcAndOffsetsReg);
    WRITE_UINT32(p_Manip->fragParams.p_Frag->ccAdBase, ccAdBaseReg);
    WRITE_UINT32(p_Manip->fragParams.p_Frag->gmask, gmaskReg);


    p_Manip->frag = TRUE;
    p_Manip->sizeForFragmentation = p_ManipParams->sizeForFragmentation;
    return E_OK;
}
