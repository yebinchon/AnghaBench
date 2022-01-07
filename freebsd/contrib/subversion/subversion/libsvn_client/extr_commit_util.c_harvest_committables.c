
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client__committables_t ;
typedef int svn_client__check_url_kind_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
struct harvest_baton {char const* root_abspath; char const* commit_relpath; int * skip_below_abspath; int * result_pool; int * wc_ctx; void* notify_baton; int notify_func; void* check_url_baton; int check_url_func; int * danglers; int * changelists; scalar_t__ just_locked; int depth; int * lock_tokens; int * committables; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int harvest_status_callback ;
 int svn_wc_walk_status (int *,char const*,int ,int ,int ,int ,int *,int ,struct harvest_baton*,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
harvest_committables(const char *local_abspath,
                     svn_client__committables_t *committables,
                     apr_hash_t *lock_tokens,
                     const char *copy_mode_relpath,
                     svn_depth_t depth,
                     svn_boolean_t just_locked,
                     apr_hash_t *changelists,
                     apr_hash_t *danglers,
                     svn_client__check_url_kind_t check_url_func,
                     void *check_url_baton,
                     svn_cancel_func_t cancel_func,
                     void *cancel_baton,
                     svn_wc_notify_func2_t notify_func,
                     void *notify_baton,
                     svn_wc_context_t *wc_ctx,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  struct harvest_baton baton;

  SVN_ERR_ASSERT((just_locked && lock_tokens) || !just_locked);

  baton.root_abspath = local_abspath;
  baton.committables = committables;
  baton.lock_tokens = lock_tokens;
  baton.commit_relpath = copy_mode_relpath;
  baton.depth = depth;
  baton.just_locked = just_locked;
  baton.changelists = changelists;
  baton.danglers = danglers;
  baton.check_url_func = check_url_func;
  baton.check_url_baton = check_url_baton;
  baton.notify_func = notify_func;
  baton.notify_baton = notify_baton;
  baton.wc_ctx = wc_ctx;
  baton.result_pool = result_pool;

  baton.skip_below_abspath = ((void*)0);

  SVN_ERR(svn_wc_walk_status(wc_ctx,
                             local_abspath,
                             depth,
                             (copy_mode_relpath != ((void*)0)) ,
                             FALSE ,
                             FALSE ,
                             ((void*)0) ,
                             harvest_status_callback,
                             &baton,
                             cancel_func, cancel_baton,
                             scratch_pool));

  return SVN_NO_ERROR;
}
