
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int svn_branch__history_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int history; } ;


 int * SVN_NO_ERROR ;
 int * branch_state_pool_get (TYPE_2__*) ;
 int svn_branch__history_dup (int const*,int *) ;

__attribute__((used)) static svn_error_t *
branch_state_set_history(svn_branch__state_t *branch,
                         const svn_branch__history_t *history,
                         apr_pool_t *scratch_pool)
{
  apr_pool_t *branch_pool = branch_state_pool_get(branch);

  branch->priv->history
    = svn_branch__history_dup(history, branch_pool);
  return SVN_NO_ERROR;
}
