
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int svn_branch__history_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* set_history ) (TYPE_2__*,int const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int const*) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__*,int const*,int *) ;

svn_error_t *
svn_branch__state_set_history(svn_branch__state_t *branch,
                              const svn_branch__history_t *history,
                              apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(history);
  SVN_ERR(branch->vtable->set_history(branch,
                                      history,
                                      scratch_pool));
  return SVN_NO_ERROR;
}
