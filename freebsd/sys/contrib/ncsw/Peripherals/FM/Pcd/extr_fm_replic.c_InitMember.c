
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {scalar_t__ p_MemberAd; int * h_Manip; int node; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_12__ {int h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdFrmReplicGroup ;
struct TYPE_13__ {int * h_Manip; } ;
typedef TYPE_3__ t_FmPcdCcNextEngineParams ;


 int ASSERT_COND (TYPE_2__*) ;
 int E_NOT_FOUND ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FillReplicAdOfTypeResult (scalar_t__,int) ;
 TYPE_1__* GetAvailableMember (TYPE_2__*) ;
 int INIT_LIST (int *) ;
 int IOMemSet32 (int *,int ,int ) ;
 int MAJOR ;
 int NextStepAd (scalar_t__,int *,TYPE_3__*,int ) ;
 int REPORT_ERROR (int ,int ,char*) ;

__attribute__((used)) static t_FmPcdFrmReplicMember* InitMember(t_FmPcdFrmReplicGroup *p_ReplicGroup,
                                          t_FmPcdCcNextEngineParams *p_MemberParams,
                                          bool last)
{
    t_FmPcdFrmReplicMember *p_CurrentMember = ((void*)0);

    ASSERT_COND(p_ReplicGroup);


    p_CurrentMember = GetAvailableMember(p_ReplicGroup);
    if (!p_CurrentMember)
    {
        REPORT_ERROR(MAJOR, E_NOT_FOUND, ("Available member"));
        return ((void*)0);
    }
    p_CurrentMember->h_Manip = ((void*)0);


    IOMemSet32((uint8_t*)p_CurrentMember->p_MemberAd, 0, FM_PCD_CC_AD_ENTRY_SIZE);

    INIT_LIST(&p_CurrentMember->node);


    NextStepAd(p_CurrentMember->p_MemberAd,
               ((void*)0),
               p_MemberParams,
               p_ReplicGroup->h_FmPcd);


    if (p_MemberParams->h_Manip)
        p_CurrentMember->h_Manip = p_MemberParams->h_Manip;


    FillReplicAdOfTypeResult(p_CurrentMember->p_MemberAd, last);

    return p_CurrentMember;
}
