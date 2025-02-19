
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* t_Handle ;
typedef int t_FmPcdStatsParams ;
struct TYPE_18__ {int type; } ;
typedef TYPE_2__ t_FmPcdManipParams ;
struct TYPE_17__ {scalar_t__ opcode; struct TYPE_17__* h_FmPcd; struct TYPE_17__* h_Ad; scalar_t__ muramAllocate; int manipParams; int type; } ;
typedef TYPE_1__ t_FmPcdManip ;
struct TYPE_19__ {int h_FmMuram; } ;
typedef TYPE_4__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 scalar_t__ CheckManipParamsAndSetType (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ CheckStatsParamsAndSetType (TYPE_1__*,int *) ;
 int E_INVALID_VALUE ;
 int E_NOT_SUPPORTED ;
 int E_NO_MEMORY ;
 scalar_t__ FM_MURAM_AllocMem (int ,int,int ) ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 scalar_t__ HMAN_OC_CAPWAP_REASSEMBLY ;
 scalar_t__ HMAN_OC_IP_REASSEMBLY ;
 int MAJOR ;
 int MemSet8 (TYPE_1__*,int ,int) ;
 int REPORT_ERROR (int ,int ,char*) ;
 int ReleaseManipHandler (TYPE_1__*,TYPE_4__*) ;
 int XX_Free (TYPE_1__*) ;
 scalar_t__ XX_Malloc (int) ;
 int memcpy (int *,TYPE_1__**,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static t_Handle ManipOrStatsSetNode(t_Handle h_FmPcd, t_Handle *p_Params,
                                    bool stats)
{
    t_FmPcdManip *p_Manip;
    t_Error err;
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;

    p_Manip = (t_FmPcdManip*)XX_Malloc(sizeof(t_FmPcdManip));
    if (!p_Manip)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("No memory"));
        return ((void*)0);
    }
    memset(p_Manip, 0, sizeof(t_FmPcdManip));

    p_Manip->type = ((t_FmPcdManipParams *)p_Params)->type;
    memcpy((uint8_t*)&p_Manip->manipParams, p_Params,
           sizeof(p_Manip->manipParams));

    if (!stats)
        err = CheckManipParamsAndSetType(p_Manip,
                                         (t_FmPcdManipParams *)p_Params);




    else
    {
        REPORT_ERROR(MAJOR, E_NOT_SUPPORTED, ("Statistics node!"));
        XX_Free(p_Manip);
        return ((void*)0);
    }

    if (err)
    {
        REPORT_ERROR(MAJOR, E_INVALID_VALUE, ("Invalid header manipulation type"));
        XX_Free(p_Manip);
        return ((void*)0);
    }

    if ((p_Manip->opcode != HMAN_OC_IP_REASSEMBLY) && (p_Manip->opcode != HMAN_OC_CAPWAP_REASSEMBLY))
    {


        if (p_Manip->muramAllocate)
        {
            p_Manip->h_Ad = (t_Handle)FM_MURAM_AllocMem(
                    p_FmPcd->h_FmMuram, FM_PCD_CC_AD_ENTRY_SIZE,
                    FM_PCD_CC_AD_TABLE_ALIGN);
            if (!p_Manip->h_Ad)
            {
                REPORT_ERROR(MAJOR, E_NO_MEMORY, ("MURAM alloc for Manipulation action descriptor"));
                ReleaseManipHandler(p_Manip, p_FmPcd);
                XX_Free(p_Manip);
                return ((void*)0);
            }

            MemSet8(p_Manip->h_Ad, 0, FM_PCD_CC_AD_ENTRY_SIZE);
        }
        else
        {
            p_Manip->h_Ad = (t_Handle)XX_Malloc(
                    FM_PCD_CC_AD_ENTRY_SIZE * sizeof(uint8_t));
            if (!p_Manip->h_Ad)
            {
                REPORT_ERROR(MAJOR, E_NO_MEMORY, ("Allocation of Manipulation action descriptor"));
                ReleaseManipHandler(p_Manip, p_FmPcd);
                XX_Free(p_Manip);
                return ((void*)0);
            }

            memset(p_Manip->h_Ad, 0, FM_PCD_CC_AD_ENTRY_SIZE * sizeof(uint8_t));
        }
    }

    p_Manip->h_FmPcd = h_FmPcd;

    return p_Manip;
}
