
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_4__ {scalar_t__ owners; } ;
typedef TYPE_1__ t_FmPcdFrmReplicGroup ;
typedef int t_Error ;


 int DeleteGroup (TYPE_1__*) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_OK ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_PCD_FrmReplicDeleteGroup(t_Handle h_ReplicGroup)
{
    t_FmPcdFrmReplicGroup *p_ReplicGroup = (t_FmPcdFrmReplicGroup *)h_ReplicGroup;

    SANITY_CHECK_RETURN_ERROR(p_ReplicGroup, E_INVALID_HANDLE);

    if (p_ReplicGroup->owners)
        RETURN_ERROR(MAJOR,
                     E_INVALID_STATE,
                     ("the group has owners and can't be deleted"));

    DeleteGroup(p_ReplicGroup);

    return E_OK;
}
