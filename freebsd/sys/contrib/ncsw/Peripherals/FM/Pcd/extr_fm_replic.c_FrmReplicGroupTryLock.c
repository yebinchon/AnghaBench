
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int p_Lock; } ;
typedef TYPE_1__ t_FmPcdFrmReplicGroup ;
typedef int t_Error ;


 int ASSERT_COND (scalar_t__) ;
 int ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_OK ;
 scalar_t__ FmPcdLockTryLock (int ) ;

t_Error FrmReplicGroupTryLock(t_Handle h_ReplicGroup)
{
    t_FmPcdFrmReplicGroup *p_ReplicGroup = (t_FmPcdFrmReplicGroup *)h_ReplicGroup;

    ASSERT_COND(h_ReplicGroup);

    if (FmPcdLockTryLock(p_ReplicGroup->p_Lock))
        return E_OK;

    return ERROR_CODE(E_BUSY);
}
