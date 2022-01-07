
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {scalar_t__ node_status; scalar_t__ repos_node_status; scalar_t__ prop_status; scalar_t__ conflicted; int wc_is_locked; int lock; int changelist; scalar_t__ file_external; scalar_t__ versioned; } ;
typedef TYPE_1__ svn_client_status_t ;
typedef int svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * print_status (char const*,char const*,char const*,scalar_t__,scalar_t__,scalar_t__,TYPE_1__ const*,unsigned int*,unsigned int*,unsigned int*,int *,int *) ;
 scalar_t__ svn_wc_status_external ;
 scalar_t__ svn_wc_status_none ;
 scalar_t__ svn_wc_status_normal ;

svn_error_t *
svn_cl__print_status(const char *target_abspath,
                     const char *target_path,
                     const char *path,
                     const svn_client_status_t *status,
                     svn_boolean_t suppress_externals_placeholders,
                     svn_boolean_t detailed,
                     svn_boolean_t show_last_committed,
                     svn_boolean_t skip_unrecognized,
                     svn_boolean_t repos_locks,
                     unsigned int *text_conflicts,
                     unsigned int *prop_conflicts,
                     unsigned int *tree_conflicts,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *pool)
{
  if (! status
      || (skip_unrecognized
          && !(status->versioned
               || status->conflicted
               || status->node_status == svn_wc_status_external))
      || (status->node_status == svn_wc_status_none
          && status->repos_node_status == svn_wc_status_none))
    return SVN_NO_ERROR;



  if (suppress_externals_placeholders)
    {

      if ((status->node_status == svn_wc_status_external)
          && (status->repos_node_status == svn_wc_status_none)
          && (! status->conflicted))
        return SVN_NO_ERROR;




      if ((status->file_external)
          && (status->repos_node_status == svn_wc_status_none)
          && ((status->node_status == svn_wc_status_normal)
              || (status->node_status == svn_wc_status_none))
          && ((status->prop_status == svn_wc_status_normal)
              || (status->prop_status == svn_wc_status_none))
          && (! status->changelist)
          && (! status->lock)
          && (! status->wc_is_locked)
          && (! status->conflicted))
        return SVN_NO_ERROR;
    }

  return print_status(target_abspath, target_path, path,
                      detailed, show_last_committed, repos_locks, status,
                      text_conflicts, prop_conflicts, tree_conflicts,
                      ctx, pool);
}
