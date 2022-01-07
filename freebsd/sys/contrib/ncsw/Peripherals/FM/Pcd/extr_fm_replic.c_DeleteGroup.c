
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint16_t ;
typedef TYPE_1__* t_Handle ;
struct TYPE_19__ {int numOfEntries; int maxNumOfEntries; scalar_t__ p_Lock; struct TYPE_19__* h_FmPcd; int * p_MemberAd; int * h_Manip; int * p_SourceTd; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
typedef TYPE_1__ t_FmPcdFrmReplicGroup ;


 int ASSERT_COND (TYPE_1__*) ;
 int FALSE ;
 int FM_MURAM_FreeMem (TYPE_1__*,int *) ;
 TYPE_1__* FmPcdGetMuramHandle (TYPE_1__*) ;
 int FmPcdManipUpdateOwner (int *,int ) ;
 int FmPcdReleaseLock (TYPE_1__*,scalar_t__) ;
 int FreeMember (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* GetAvailableMember (TYPE_1__*) ;
 TYPE_1__* GetMemberByIndex (TYPE_1__*,int ) ;
 int RemoveMemberFromList (TYPE_1__*,TYPE_1__*) ;
 int XX_Free (TYPE_1__*) ;

__attribute__((used)) static void DeleteGroup(t_FmPcdFrmReplicGroup *p_ReplicGroup)
{
    int i, j;
    t_Handle h_Muram;
    t_FmPcdFrmReplicMember *p_Member, *p_CurrentMember;

    if (p_ReplicGroup)
    {
        ASSERT_COND(p_ReplicGroup->h_FmPcd);
        h_Muram = FmPcdGetMuramHandle(p_ReplicGroup->h_FmPcd);
        ASSERT_COND(h_Muram);


        if (p_ReplicGroup->p_SourceTd)
        {
            FM_MURAM_FreeMem(h_Muram, p_ReplicGroup->p_SourceTd);
            p_ReplicGroup->p_SourceTd = ((void*)0);
        }



        if (p_ReplicGroup->numOfEntries)
        {
            j = p_ReplicGroup->numOfEntries-1;



            for (i=j; i>=0; i--)
            {
                p_CurrentMember = GetMemberByIndex(p_ReplicGroup, (uint16_t)i );
                ASSERT_COND(p_CurrentMember);

                if (p_CurrentMember->h_Manip)
                {
                    FmPcdManipUpdateOwner(p_CurrentMember->h_Manip, FALSE);
                    p_CurrentMember->h_Manip = ((void*)0);
                }


                RemoveMemberFromList(p_ReplicGroup, p_CurrentMember);


                FreeMember(p_ReplicGroup, p_CurrentMember);
            }
        }


        for (i=0; i<p_ReplicGroup->maxNumOfEntries; i++)
        {
            p_Member = GetAvailableMember(p_ReplicGroup);
            ASSERT_COND(p_Member);
            if (p_Member->p_MemberAd)
            {
                FM_MURAM_FreeMem(h_Muram, p_Member->p_MemberAd);
                p_Member->p_MemberAd = ((void*)0);
            }
            XX_Free(p_Member);
        }


        if (p_ReplicGroup->p_Lock)
            FmPcdReleaseLock(p_ReplicGroup->h_FmPcd, p_ReplicGroup->p_Lock);


        XX_Free(p_ReplicGroup);
    }
}
