
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_element__tree_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int * element_tree; } ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
branch_state_get_elements(const svn_branch__state_t *branch,
                          svn_element__tree_t **element_tree_p,
                          apr_pool_t *result_pool)
{
  *element_tree_p = branch->priv->element_tree;
  return SVN_NO_ERROR;
}
