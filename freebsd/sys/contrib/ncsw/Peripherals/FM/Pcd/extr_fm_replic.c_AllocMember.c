
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_1__* t_Handle ;
struct TYPE_11__ {int node; int * p_MemberAd; } ;
typedef TYPE_2__ t_FmPcdFrmReplicMember ;
struct TYPE_10__ {int availableMembersList; int h_FmPcd; } ;
typedef TYPE_1__ t_FmPcdFrmReplicGroup ;
typedef int t_Error ;
typedef int t_AdOfTypeResult ;


 int ASSERT_COND (TYPE_1__*) ;
 int E_NO_MEMORY ;
 int E_OK ;
 scalar_t__ FM_MURAM_AllocMem (TYPE_1__*,int ,int ) ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 TYPE_1__* FmPcdGetMuramHandle (int ) ;
 int IOMemSet32 (int *,int ,int ) ;
 int LIST_AddToTail (int *,int *) ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_Free (TYPE_2__*) ;
 scalar_t__ XX_Malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static t_Error AllocMember(t_FmPcdFrmReplicGroup *p_ReplicGroup)
{
    t_FmPcdFrmReplicMember *p_CurrentMember;
    t_Handle h_Muram;

    ASSERT_COND(p_ReplicGroup);

    h_Muram = FmPcdGetMuramHandle(p_ReplicGroup->h_FmPcd);
    ASSERT_COND(h_Muram);


    p_CurrentMember = (t_FmPcdFrmReplicMember *)XX_Malloc(sizeof(t_FmPcdFrmReplicMember));
    if (!p_CurrentMember)
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("Frame replicator member"));

    memset(p_CurrentMember, 0 ,sizeof(t_FmPcdFrmReplicMember));


    p_CurrentMember->p_MemberAd =
        (t_AdOfTypeResult*)FM_MURAM_AllocMem(h_Muram,
                                             FM_PCD_CC_AD_ENTRY_SIZE,
                                             FM_PCD_CC_AD_TABLE_ALIGN);
    if (!p_CurrentMember->p_MemberAd)
    {
        XX_Free(p_CurrentMember);
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("member AD table"));
    }
    IOMemSet32((uint8_t*)p_CurrentMember->p_MemberAd, 0, FM_PCD_CC_AD_ENTRY_SIZE);


    LIST_AddToTail(&p_CurrentMember->node, &(p_ReplicGroup->availableMembersList));

    return E_OK;
}
