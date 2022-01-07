
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_hash_t ;


 scalar_t__ SVN_ERR_WC_FOUND_CONFLICT ;
 scalar_t__ SVN_ERR_WC_OBSTRUCTED_UPDATE ;
 TYPE_1__* SVN_NO_ERROR ;
 int apr_hash_pool_get (int *) ;
 char* apr_pstrdup (int ,char const*) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_hash_sets (int *,char const*,char*) ;

__attribute__((used)) static svn_error_t *
handle_tree_conflict_resolution_failure(const char *local_abspath,
                                        svn_error_t *err,
                                        apr_hash_t *unresolved_tree_conflicts)
{
  const char *tc_abspath;

  if (!unresolved_tree_conflicts
      || (err->apr_err != SVN_ERR_WC_OBSTRUCTED_UPDATE
          && err->apr_err != SVN_ERR_WC_FOUND_CONFLICT))
    return svn_error_trace(err);

  svn_error_clear(err);
  tc_abspath = apr_pstrdup(apr_hash_pool_get(unresolved_tree_conflicts),
                           local_abspath);

  svn_hash_sets(unresolved_tree_conflicts, tc_abspath, "");

  return SVN_NO_ERROR;
}
