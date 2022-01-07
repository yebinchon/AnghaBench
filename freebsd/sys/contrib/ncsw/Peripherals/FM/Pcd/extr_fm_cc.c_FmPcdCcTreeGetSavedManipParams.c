
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ h_FmPcdCcSavedManipParams; } ;
typedef TYPE_1__ t_FmPcdCcTree ;


 int ASSERT_COND (TYPE_1__*) ;

t_Handle FmPcdCcTreeGetSavedManipParams(t_Handle h_FmTree)
{
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmTree;

    ASSERT_COND(p_FmPcdCcTree);

    return p_FmPcdCcTree->h_FmPcdCcSavedManipParams;
}
