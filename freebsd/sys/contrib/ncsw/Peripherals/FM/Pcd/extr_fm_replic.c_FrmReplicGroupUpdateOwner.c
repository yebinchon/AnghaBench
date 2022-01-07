
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {struct TYPE_3__* owners; } ;
typedef TYPE_1__ t_FmPcdFrmReplicGroup ;


 int ASSERT_COND (TYPE_1__*) ;

void FrmReplicGroupUpdateOwner(t_Handle h_ReplicGroup,
                                bool add)
{
    t_FmPcdFrmReplicGroup *p_ReplicGroup = (t_FmPcdFrmReplicGroup *)h_ReplicGroup;
    ASSERT_COND(p_ReplicGroup);


    if (add)
        p_ReplicGroup->owners++;
    else
    {
        ASSERT_COND(p_ReplicGroup->owners);
        p_ReplicGroup->owners--;
    }
}
