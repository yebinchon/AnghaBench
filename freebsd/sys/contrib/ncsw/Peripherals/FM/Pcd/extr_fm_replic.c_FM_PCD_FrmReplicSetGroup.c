
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_1__ ;


typedef TYPE_1__* t_Handle ;
typedef int t_FmPcdFrmReplicMember ;
struct TYPE_26__ {int maxNumOfEntries; int numOfEntries; struct TYPE_26__* p_SourceTd; int membersList; int * nextEngineParams; struct TYPE_26__* h_FmPcd; int p_Lock; int availableMembersList; } ;
typedef TYPE_1__ t_FmPcdFrmReplicGroupParams ;
typedef TYPE_1__ t_FmPcdFrmReplicGroup ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (TYPE_1__*) ;
 int AddMemberToList (TYPE_1__*,int *,int *) ;
 scalar_t__ AllocMember (TYPE_1__*) ;
 int BuildSourceTd (TYPE_1__*) ;
 scalar_t__ CheckParams (TYPE_1__*,TYPE_1__*) ;
 int DeleteGroup (TYPE_1__*) ;
 scalar_t__ E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_STATE ;
 scalar_t__ E_NO_MEMORY ;
 int FALSE ;
 scalar_t__ FM_MURAM_AllocMem (TYPE_1__*,int ,int ) ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 int FmPcdAcquireLock (TYPE_1__*) ;
 TYPE_1__* FmPcdGetMuramHandle (TYPE_1__*) ;
 int FmPcdIsAdvancedOffloadSupported (TYPE_1__*) ;
 scalar_t__ FmPcdUpdateCcShadow (TYPE_1__*,int ,int ) ;
 int INIT_LIST (int *) ;
 int * InitMember (TYPE_1__*,int *,int) ;
 int LinkMemberToMember (TYPE_1__*,int *,int *) ;
 int LinkSourceToMember (TYPE_1__*,TYPE_1__*,int *) ;
 int MAJOR ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,scalar_t__,int *) ;
 int TRUE ;
 scalar_t__ XX_Malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

t_Handle FM_PCD_FrmReplicSetGroup(t_Handle h_FmPcd,
                                  t_FmPcdFrmReplicGroupParams *p_ReplicGroupParam)
{
    t_FmPcdFrmReplicGroup *p_ReplicGroup;
    t_FmPcdFrmReplicMember *p_CurrentMember, *p_NextMember = ((void*)0);
    int i;
    t_Error err;
    bool last = FALSE;
    t_Handle h_Muram;

    SANITY_CHECK_RETURN_VALUE(h_FmPcd, E_INVALID_HANDLE, ((void*)0));
    SANITY_CHECK_RETURN_VALUE(p_ReplicGroupParam, E_INVALID_HANDLE, ((void*)0));

    if (!FmPcdIsAdvancedOffloadSupported(h_FmPcd))
    {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("Advanced-offload must be enabled"));
        return ((void*)0);
    }

    err = CheckParams(h_FmPcd, p_ReplicGroupParam);
    if (err)
    {
        REPORT_ERROR(MAJOR, err, (NO_MSG));
        return ((void*)0);
    }

    p_ReplicGroup = (t_FmPcdFrmReplicGroup*)XX_Malloc(sizeof(t_FmPcdFrmReplicGroup));
    if (!p_ReplicGroup)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("No memory"));
        return ((void*)0);
    }
    memset(p_ReplicGroup, 0, sizeof(t_FmPcdFrmReplicGroup));


    INIT_LIST(&p_ReplicGroup->availableMembersList);
    INIT_LIST(&p_ReplicGroup->membersList);

    p_ReplicGroup->h_FmPcd = h_FmPcd;

    h_Muram = FmPcdGetMuramHandle(p_ReplicGroup->h_FmPcd);
    ASSERT_COND(h_Muram);


    p_ReplicGroup->p_Lock = FmPcdAcquireLock(p_ReplicGroup->h_FmPcd);
    if (!p_ReplicGroup->p_Lock)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("Replic group lock"));
        DeleteGroup(p_ReplicGroup);
        return ((void*)0);
    }


    p_ReplicGroup->p_SourceTd =
        (t_Handle)FM_MURAM_AllocMem(h_Muram,
                                    FM_PCD_CC_AD_ENTRY_SIZE,
                                    FM_PCD_CC_AD_TABLE_ALIGN);
    if (!p_ReplicGroup->p_SourceTd)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("frame replicator source table descriptor"));
        DeleteGroup(p_ReplicGroup);
        return ((void*)0);
    }


    err = FmPcdUpdateCcShadow(p_ReplicGroup->h_FmPcd,
                              FM_PCD_CC_AD_ENTRY_SIZE,
                              FM_PCD_CC_AD_TABLE_ALIGN);
    if (err)
    {
        REPORT_ERROR(MAJOR, err, ("Update CC shadow"));
        DeleteGroup(p_ReplicGroup);
        return ((void*)0);
    }

    p_ReplicGroup->maxNumOfEntries = p_ReplicGroupParam->maxNumOfEntries;



    for (i=0; i<p_ReplicGroup->maxNumOfEntries; i++)
    {
        err = AllocMember(p_ReplicGroup);
        if (err)
        {
            REPORT_ERROR(MAJOR, err, ("allocate a new member"));
            DeleteGroup(p_ReplicGroup);
            return ((void*)0);
        }
    }




    for (i=(p_ReplicGroupParam->numOfEntries-1); i>=0; i--)
    {

        if (i == (p_ReplicGroupParam->numOfEntries-1))
            last = TRUE;
        else
            last = FALSE;


        p_CurrentMember = InitMember(p_ReplicGroup,
                                     &(p_ReplicGroupParam->nextEngineParams[i]),
                                     last);
        if (!p_CurrentMember)
        {
            REPORT_ERROR(MAJOR, E_INVALID_HANDLE, ("No available member"));
            DeleteGroup(p_ReplicGroup);
            return ((void*)0);
        }


        LinkMemberToMember(p_ReplicGroup, p_CurrentMember, p_NextMember);


        AddMemberToList(p_ReplicGroup, p_CurrentMember, &p_ReplicGroup->membersList);

        p_NextMember = p_CurrentMember;
    }


    BuildSourceTd(p_ReplicGroup->p_SourceTd);


    LinkSourceToMember(p_ReplicGroup, p_ReplicGroup->p_SourceTd, p_NextMember);

    return p_ReplicGroup;
}
