
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* owners; } ;
typedef TYPE_1__ t_FmPcdCcTree ;


 int ASSERT_COND (TYPE_1__*) ;

__attribute__((used)) static void UpdateCcRootOwner(t_FmPcdCcTree *p_FmPcdCcTree, bool add)
{
    ASSERT_COND(p_FmPcdCcTree);



    if (add)
        p_FmPcdCcTree->owners++;
    else
    {
        ASSERT_COND(p_FmPcdCcTree->owners);
        p_FmPcdCcTree->owners--;
    }
}
