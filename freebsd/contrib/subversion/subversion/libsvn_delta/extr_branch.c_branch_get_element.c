
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_element__content_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__state_t ;
struct TYPE_5__ {int element_tree; } ;


 int branch_validate_element (TYPE_2__ const*,int,int *) ;
 int * svn_element__tree_get (int ,int) ;

__attribute__((used)) static svn_element__content_t *
branch_get_element(const svn_branch__state_t *branch,
                   int eid)
{
  svn_element__content_t *element;

  element = svn_element__tree_get(branch->priv->element_tree, eid);

  if (element)
    branch_validate_element(branch, eid, element);
  return element;
}
