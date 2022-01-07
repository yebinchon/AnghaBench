
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_element__tree_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* get_elements ) (TYPE_2__ const*,int **,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__ const*,int **,int *) ;

svn_error_t *
svn_branch__state_get_elements(const svn_branch__state_t *branch,
                               svn_element__tree_t **element_tree_p,
                               apr_pool_t *result_pool)
{
  SVN_ERR(branch->vtable->get_elements(branch,
                                       element_tree_p,
                                       result_pool));
  return SVN_NO_ERROR;
}
