
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conflicted; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
typedef scalar_t__ svn_client_conflict_option_id_t ;
typedef scalar_t__ svn_boolean_t ;
struct conflict_status_walker_baton {int resolved_a_tree_conflict; int unresolved_tree_conflicts; int conflict_walk_func_baton; int * (* conflict_walk_func ) (int ,int *,int *) ;int ctx; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int handle_tree_conflict_resolution_failure (char const*,int *,int ) ;
 int * stub1 (int ,int *,int *) ;
 int svn_client_conflict_get (int **,char const*,int ,int *,int *) ;
 int svn_client_conflict_get_conflicted (int *,int *,scalar_t__*,int *,int *,int *) ;
 scalar_t__ svn_client_conflict_option_postpone ;
 scalar_t__ svn_client_conflict_option_unspecified ;
 scalar_t__ svn_client_conflict_tree_get_resolution (int *) ;
 int * svn_error_trace (int *) ;

__attribute__((used)) static svn_error_t *
conflict_status_walker(void *baton,
                       const char *local_abspath,
                       const svn_wc_status3_t *status,
                       apr_pool_t *scratch_pool)
{
  struct conflict_status_walker_baton *cswb = baton;
  svn_client_conflict_t *conflict;
  svn_error_t *err;
  svn_boolean_t tree_conflicted;

  if (!status->conflicted)
    return SVN_NO_ERROR;

  SVN_ERR(svn_client_conflict_get(&conflict, local_abspath, cswb->ctx,
                                  scratch_pool, scratch_pool));
  SVN_ERR(svn_client_conflict_get_conflicted(((void*)0), ((void*)0), &tree_conflicted,
                                             conflict, scratch_pool,
                                             scratch_pool));
  err = cswb->conflict_walk_func(cswb->conflict_walk_func_baton,
                                 conflict, scratch_pool);
  if (err)
    {
      if (tree_conflicted)
        SVN_ERR(handle_tree_conflict_resolution_failure(
                  local_abspath, err, cswb->unresolved_tree_conflicts));

      else
        return svn_error_trace(err);
    }

  if (tree_conflicted)
    {
      svn_client_conflict_option_id_t resolution;

      resolution = svn_client_conflict_tree_get_resolution(conflict);
      if (resolution != svn_client_conflict_option_unspecified &&
          resolution != svn_client_conflict_option_postpone)
        cswb->resolved_a_tree_conflict = TRUE;
    }

  return SVN_NO_ERROR;
}
