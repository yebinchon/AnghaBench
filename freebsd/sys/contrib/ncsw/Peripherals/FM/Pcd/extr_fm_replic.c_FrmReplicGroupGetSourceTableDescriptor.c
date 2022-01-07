
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {void* p_SourceTd; } ;
typedef TYPE_1__ t_FmPcdFrmReplicGroup ;


 int ASSERT_COND (TYPE_1__*) ;

void * FrmReplicGroupGetSourceTableDescriptor(t_Handle h_ReplicGroup)
{
    t_FmPcdFrmReplicGroup *p_ReplicGroup = (t_FmPcdFrmReplicGroup *)h_ReplicGroup;
    ASSERT_COND(p_ReplicGroup);

    return (p_ReplicGroup->p_SourceTd);
}
