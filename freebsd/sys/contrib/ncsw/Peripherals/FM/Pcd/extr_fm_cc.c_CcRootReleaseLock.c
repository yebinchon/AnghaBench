
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int p_Lock; } ;
typedef TYPE_1__ t_FmPcdCcTree ;


 int ASSERT_COND (scalar_t__) ;
 int FmPcdLockUnlock (int ) ;

__attribute__((used)) static void CcRootReleaseLock(t_Handle h_FmPcdCcTree)
{
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmPcdCcTree;

    ASSERT_COND(h_FmPcdCcTree);

    FmPcdLockUnlock(p_FmPcdCcTree->p_Lock);
}
