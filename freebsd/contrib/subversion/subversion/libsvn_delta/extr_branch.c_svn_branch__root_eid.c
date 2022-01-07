
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root_eid; } ;
typedef TYPE_1__ svn_element__tree_t ;
typedef int svn_branch__state_t ;


 int svn_branch__state_get_elements (int const*,TYPE_1__**,int *) ;
 int svn_error_clear (int ) ;

int
svn_branch__root_eid(const svn_branch__state_t *branch)
{
  svn_element__tree_t *elements;

  svn_error_clear(svn_branch__state_get_elements(branch, &elements,
                                                 ((void*)0) ));
  return elements->root_eid;
}
