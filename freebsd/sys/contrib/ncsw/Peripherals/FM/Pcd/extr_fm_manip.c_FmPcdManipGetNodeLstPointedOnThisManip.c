
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_List ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int nodesLst; } ;
typedef TYPE_1__ t_FmPcdManip ;


 int ASSERT_COND (scalar_t__) ;

t_List *FmPcdManipGetNodeLstPointedOnThisManip(t_Handle h_Manip)
{
    ASSERT_COND(h_Manip);
    return &((t_FmPcdManip *)h_Manip)->nodesLst;
}
