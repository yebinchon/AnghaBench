
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_element__content_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* get_element ) (TYPE_2__ const*,int **,int,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__ const*,int **,int,int *) ;

svn_error_t *
svn_branch__state_get_element(const svn_branch__state_t *branch,
                              svn_element__content_t **element_p,
                              int eid,
                              apr_pool_t *result_pool)
{
  SVN_ERR(branch->vtable->get_element(branch,
                                      element_p, eid, result_pool));
  return SVN_NO_ERROR;
}
