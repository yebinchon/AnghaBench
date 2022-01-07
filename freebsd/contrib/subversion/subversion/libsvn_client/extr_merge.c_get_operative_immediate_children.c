
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_context_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
struct TYPE_3__ {char const* merge_source_fspath; char const* merge_target_abspath; int * result_pool; int * wc_ctx; scalar_t__ depth; int * operative_children; } ;
typedef TYPE_1__ log_find_operative_subtree_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int get_log (int *,char*,scalar_t__,scalar_t__,int ,int ,TYPE_1__*,int *) ;
 int log_find_operative_subtree_revs ;
 scalar_t__ svn_depth_infinity ;

__attribute__((used)) static svn_error_t *
get_operative_immediate_children(apr_hash_t **operative_children,
                                 const char *merge_source_fspath,
                                 svn_revnum_t oldest_rev,
                                 svn_revnum_t youngest_rev,
                                 const char *merge_target_abspath,
                                 svn_depth_t depth,
                                 svn_wc_context_t *wc_ctx,
                                 svn_ra_session_t *ra_session,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  log_find_operative_subtree_baton_t log_baton;

  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(oldest_rev));
  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(youngest_rev));
  SVN_ERR_ASSERT(oldest_rev <= youngest_rev);

  *operative_children = apr_hash_make(result_pool);

  if (depth == svn_depth_infinity)
    return SVN_NO_ERROR;




  log_baton.operative_children = *operative_children;
  log_baton.merge_source_fspath = merge_source_fspath;
  log_baton.merge_target_abspath = merge_target_abspath;
  log_baton.depth = depth;
  log_baton.wc_ctx = wc_ctx;
  log_baton.result_pool = result_pool;

  SVN_ERR(get_log(ra_session, "", youngest_rev, oldest_rev,
                  TRUE,
                  log_find_operative_subtree_revs,
                  &log_baton, scratch_pool));

  return SVN_NO_ERROR;
}
