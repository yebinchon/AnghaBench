
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int p_Lock; } ;
typedef TYPE_1__ t_FmPcdFrmReplicGroup ;


 int ASSERT_COND (scalar_t__) ;
 int FmPcdLockUnlock (int ) ;

void FrmReplicGroupUnlock(t_Handle h_ReplicGroup)
{
    t_FmPcdFrmReplicGroup *p_ReplicGroup = (t_FmPcdFrmReplicGroup *)h_ReplicGroup;

    ASSERT_COND(h_ReplicGroup);

    FmPcdLockUnlock(p_ReplicGroup->p_Lock);
}
