
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {scalar_t__ nonConsistentSpFqid; int p_Ipv6ReassTbl; scalar_t__ h_Ipv6Ad; int p_Ipv4ReassTbl; scalar_t__ h_Ipv4Ad; } ;
struct TYPE_9__ {int p_ReassTbl; scalar_t__ h_Ad; } ;
struct TYPE_11__ {int sgBpid; TYPE_2__ ip; TYPE_1__ capwap; } ;
struct TYPE_12__ {int updateParams; int reassm; TYPE_3__ reassmParams; scalar_t__ h_FmPcd; } ;
typedef TYPE_4__ t_FmPcdManip ;
struct TYPE_13__ {scalar_t__ physicalMuramBase; } ;
typedef TYPE_5__ t_FmPcd ;
typedef int t_Error ;
struct TYPE_14__ {int pcAndOffsets; int gmask; int matchTblPtr; int ccAdBase; } ;
typedef TYPE_6__ t_AdOfTypeContLookup ;
typedef int e_NetHeaderType ;


 int CreateReassTable (TYPE_4__*,int) ;
 int DISCARD_MASK ;
 int E_NOT_SUPPORTED ;
 int E_OK ;
 int FM_PCD_AD_CONT_LOOKUP_TYPE ;
 int FM_PCD_AD_NCSPFQIDM_MASK ;



 scalar_t__ HMAN_OC_CAPWAP_REASSEMBLY ;
 scalar_t__ HMAN_OC_IP_REASSEMBLY ;
 int MAJOR ;
 char* NO_MSG ;
 int NUM_OF_EXTRA_TASKS ;
 int NUM_OF_TASKS ;
 int RETURN_ERROR (int ,int ,char*) ;
 int TRUE ;
 int WRITE_UINT32 (int ,int) ;
 scalar_t__ XX_VirtToPhys (int ) ;

__attribute__((used)) static t_Error FillReassmManipParams(t_FmPcdManip *p_Manip, e_NetHeaderType hdr)
{
    t_AdOfTypeContLookup *p_Ad;
    t_FmPcd *p_FmPcd = (t_FmPcd *)p_Manip->h_FmPcd;
    uint32_t tmpReg32;
    t_Error err = E_OK;




    if ((err = CreateReassTable(p_Manip, hdr)) != E_OK)
        RETURN_ERROR(MAJOR, err, NO_MSG);


    tmpReg32 = 0;
    tmpReg32 |= FM_PCD_AD_CONT_LOOKUP_TYPE;


    switch (hdr)
    {
        case 129:
            p_Ad = (t_AdOfTypeContLookup *)p_Manip->reassmParams.ip.h_Ipv4Ad;
            tmpReg32 |= (uint32_t)(XX_VirtToPhys(
                    p_Manip->reassmParams.ip.p_Ipv4ReassTbl)
                    - (p_FmPcd->physicalMuramBase));
            break;
        case 128:
            p_Ad = (t_AdOfTypeContLookup *)p_Manip->reassmParams.ip.h_Ipv6Ad;
            tmpReg32 |= (uint32_t)(XX_VirtToPhys(
                    p_Manip->reassmParams.ip.p_Ipv6ReassTbl)
                    - (p_FmPcd->physicalMuramBase));
            break;
        case 130:
            p_Ad = (t_AdOfTypeContLookup *)p_Manip->reassmParams.capwap.h_Ad;
            tmpReg32 |= (uint32_t)(XX_VirtToPhys(
                    p_Manip->reassmParams.capwap.p_ReassTbl)
                    - (p_FmPcd->physicalMuramBase));
            break;
        default:
            RETURN_ERROR(MAJOR, E_NOT_SUPPORTED, ("header type"));
    }

    WRITE_UINT32(p_Ad->ccAdBase, tmpReg32);



    p_Manip->updateParams = (NUM_OF_TASKS | NUM_OF_EXTRA_TASKS | DISCARD_MASK);

    if ((hdr == 128) || (hdr == 129))
    {
        tmpReg32 = 0;
        tmpReg32 |= (uint32_t)HMAN_OC_IP_REASSEMBLY;
    }
    WRITE_UINT32(p_Ad->pcAndOffsets, tmpReg32);

    p_Manip->reassm = TRUE;

    return E_OK;
}
