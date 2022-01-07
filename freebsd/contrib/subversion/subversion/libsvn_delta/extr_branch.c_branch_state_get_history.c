
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__state_t ;
typedef int svn_branch__history_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int history; } ;


 int * SVN_NO_ERROR ;
 int * svn_branch__history_dup (int ,int *) ;

__attribute__((used)) static svn_error_t *
branch_state_get_history(svn_branch__state_t *branch,
                         svn_branch__history_t **history_p,
                         apr_pool_t *result_pool)
{
  if (history_p)
    {
      *history_p
        = svn_branch__history_dup(branch->priv->history, result_pool);
    }
  return SVN_NO_ERROR;
}
