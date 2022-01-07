
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int p_Lock; } ;
typedef TYPE_1__ t_FmPcdCcTree ;
typedef int t_Error ;


 int ASSERT_COND (scalar_t__) ;
 int ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_OK ;
 scalar_t__ FmPcdLockTryLock (int ) ;

__attribute__((used)) static t_Error CcRootTryLock(t_Handle h_FmPcdCcTree)
{
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmPcdCcTree;

    ASSERT_COND(h_FmPcdCcTree);

    if (FmPcdLockTryLock(p_FmPcdCcTree->p_Lock))
        return E_OK;

    return ERROR_CODE(E_BUSY);
}
