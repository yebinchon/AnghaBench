
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int t_Handle ;
struct TYPE_12__ {int * h_Ipv4Ad; int * h_Ipv6Ad; int * p_Ipv6ReassTbl; int * p_Ipv4ReassTbl; scalar_t__ ipv6AutoLearnSetLockTblAddr; scalar_t__ ipv4AutoLearnSetLockTblAddr; scalar_t__ ipv6AutoLearnHashTblAddr; scalar_t__ ipv4AutoLearnHashTblAddr; } ;
struct TYPE_13__ {scalar_t__ hdr; TYPE_3__ ip; scalar_t__ internalBufferPoolAddr; scalar_t__ internalBufferPoolManagementIndexAddr; scalar_t__ reassFrmDescrIndxPoolTblAddr; int * p_ReassCommonTbl; scalar_t__ reassFrmDescrPoolTblAddr; scalar_t__ timeOutTblAddr; } ;
struct TYPE_11__ {int * p_Frag; int scratchBpid; } ;
struct TYPE_10__ {int * p_TimeOutTbl; int * p_ReassmFrmDescrIndxPoolTbl; int * p_ReassmFrmDescrPoolTbl; int * p_AutoLearnHashTbl; } ;
struct TYPE_14__ {int * p_StatsTbl; TYPE_4__ reassmParams; scalar_t__ reassm; TYPE_2__ fragParams; scalar_t__ frag; int * h_Frag; TYPE_1__ capwapFragParams; int * p_Template; int * h_Ad; scalar_t__ muramAllocate; } ;
typedef TYPE_5__ t_FmPcdManip ;
struct TYPE_15__ {int h_FmMuram; } ;
typedef TYPE_6__ t_FmPcd ;


 int FM_MURAM_FreeMem (int ,int *) ;
 int FmPcdFragHcScratchPoolEmpty (int ,int ) ;
 int FmPcdUnregisterReassmPort (TYPE_6__*,int *) ;
 scalar_t__ HEADER_TYPE_CAPWAP ;
 int * UINT_TO_PTR (scalar_t__) ;
 int XX_Free (int *) ;
 int XX_FreeSmart (int *) ;

__attribute__((used)) static void ReleaseManipHandler(t_FmPcdManip *p_Manip, t_FmPcd *p_FmPcd)
{
    if (p_Manip->h_Ad)
    {
        if (p_Manip->muramAllocate)
            FM_MURAM_FreeMem(p_FmPcd->h_FmMuram, p_Manip->h_Ad);
        else
            XX_Free(p_Manip->h_Ad);
        p_Manip->h_Ad = ((void*)0);
    }
    if (p_Manip->p_Template)
    {
        FM_MURAM_FreeMem(p_FmPcd->h_FmMuram, p_Manip->p_Template);
        p_Manip->p_Template = ((void*)0);
    }
    if (p_Manip->frag)
    {
        if (p_Manip->fragParams.p_Frag)
        {




            FM_MURAM_FreeMem(p_FmPcd->h_FmMuram, p_Manip->fragParams.p_Frag);
        }
    }
    else
        if (p_Manip->reassm)
        {
            FmPcdUnregisterReassmPort(p_FmPcd,
                                      p_Manip->reassmParams.p_ReassCommonTbl);

            if (p_Manip->reassmParams.timeOutTblAddr)
                FM_MURAM_FreeMem(
                        p_FmPcd->h_FmMuram,
                        UINT_TO_PTR(p_Manip->reassmParams.timeOutTblAddr));
            if (p_Manip->reassmParams.reassFrmDescrPoolTblAddr)
                XX_FreeSmart(
                        UINT_TO_PTR(p_Manip->reassmParams.reassFrmDescrPoolTblAddr));
            if (p_Manip->reassmParams.p_ReassCommonTbl)
                FM_MURAM_FreeMem(p_FmPcd->h_FmMuram,
                                 p_Manip->reassmParams.p_ReassCommonTbl);
            if (p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr)
                FM_MURAM_FreeMem(
                        p_FmPcd->h_FmMuram,
                        UINT_TO_PTR(p_Manip->reassmParams.reassFrmDescrIndxPoolTblAddr));
            if (p_Manip->reassmParams.internalBufferPoolManagementIndexAddr)
                FM_MURAM_FreeMem(
                        p_FmPcd->h_FmMuram,
                        UINT_TO_PTR(p_Manip->reassmParams.internalBufferPoolManagementIndexAddr));
            if (p_Manip->reassmParams.internalBufferPoolAddr)
                FM_MURAM_FreeMem(
                        p_FmPcd->h_FmMuram,
                        UINT_TO_PTR(p_Manip->reassmParams.internalBufferPoolAddr));
            if (p_Manip->reassmParams.hdr == HEADER_TYPE_CAPWAP)
            {

            }
            else
            {
                if (p_Manip->reassmParams.ip.ipv4AutoLearnHashTblAddr)
                    XX_FreeSmart(
                            UINT_TO_PTR(p_Manip->reassmParams.ip.ipv4AutoLearnHashTblAddr));
                if (p_Manip->reassmParams.ip.ipv6AutoLearnHashTblAddr)
                    XX_FreeSmart(
                            UINT_TO_PTR(p_Manip->reassmParams.ip.ipv6AutoLearnHashTblAddr));
                if (p_Manip->reassmParams.ip.ipv4AutoLearnSetLockTblAddr)
                    XX_FreeSmart(
                            UINT_TO_PTR(p_Manip->reassmParams.ip.ipv4AutoLearnSetLockTblAddr));
                if (p_Manip->reassmParams.ip.ipv6AutoLearnSetLockTblAddr)
                    XX_FreeSmart(
                            UINT_TO_PTR(p_Manip->reassmParams.ip.ipv6AutoLearnSetLockTblAddr));
                if (p_Manip->reassmParams.ip.p_Ipv4ReassTbl)
                    FM_MURAM_FreeMem(p_FmPcd->h_FmMuram,
                                     p_Manip->reassmParams.ip.p_Ipv4ReassTbl);
                if (p_Manip->reassmParams.ip.p_Ipv6ReassTbl)
                    FM_MURAM_FreeMem(p_FmPcd->h_FmMuram,
                                     p_Manip->reassmParams.ip.p_Ipv6ReassTbl);
                if (p_Manip->reassmParams.ip.h_Ipv6Ad)
                    XX_FreeSmart(p_Manip->reassmParams.ip.h_Ipv6Ad);
                if (p_Manip->reassmParams.ip.h_Ipv4Ad)
                    XX_FreeSmart(p_Manip->reassmParams.ip.h_Ipv4Ad);
            }
        }

    if (p_Manip->p_StatsTbl)
        FM_MURAM_FreeMem(p_FmPcd->h_FmMuram, p_Manip->p_StatsTbl);
}
