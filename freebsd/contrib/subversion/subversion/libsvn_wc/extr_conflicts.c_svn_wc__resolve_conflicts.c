
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,int ,int *) ;
struct TYPE_22__ {int db; } ;
typedef TYPE_2__ svn_wc_context_t ;
typedef int svn_wc_conflict_resolver_func2_t ;
typedef int svn_wc_conflict_choice_t ;
struct TYPE_23__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef TYPE_3__* (* svn_cancel_func_t ) (void*) ;
typedef void* svn_boolean_t ;
struct conflict_status_walker_baton {char const* resolve_prop; int * resolve_later; void* resolved_one; void* notify_baton; int (* notify_func ) (void*,int ,int *) ;void* cancel_baton; TYPE_3__* (* cancel_func ) (void*) ;void* conflict_baton; int conflict_func; int conflict_choice; void* resolve_tree; void* resolve_text; int db; } ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 void* FALSE ;
 int SVN_ERR (TYPE_3__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 TYPE_3__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int conflict_status_walker (struct conflict_status_walker_baton*,char const*,TYPE_1__*,int *) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 int svn_dirent_local_style (char const*,int *) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;
 TYPE_3__* svn_error_createf (scalar_t__,TYPE_3__*,int ,int ) ;
 TYPE_3__* svn_error_trace (int ) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_conflict_resolver_done ;
 int svn_wc_notify_conflict_resolver_starting ;
 TYPE_3__* svn_wc_status3 (TYPE_1__**,TYPE_2__*,char const*,int *,int *) ;
 TYPE_3__* svn_wc_walk_status (TYPE_2__*,char const*,scalar_t__,void*,void*,int ,int *,int (*) (struct conflict_status_walker_baton*,char const*,TYPE_1__*,int *),struct conflict_status_walker_baton*,TYPE_3__* (*) (void*),void*,int *) ;

svn_error_t *
svn_wc__resolve_conflicts(svn_wc_context_t *wc_ctx,
                          const char *local_abspath,
                          svn_depth_t depth,
                          svn_boolean_t resolve_text,
                          const char *resolve_prop,
                          svn_boolean_t resolve_tree,
                          svn_wc_conflict_choice_t conflict_choice,
                          svn_wc_conflict_resolver_func2_t conflict_func,
                          void *conflict_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          svn_wc_notify_func2_t notify_func,
                          void *notify_baton,
                          apr_pool_t *scratch_pool)
{
  struct conflict_status_walker_baton cswb;
  apr_pool_t *iterpool = ((void*)0);
  svn_error_t *err;

  if (depth == svn_depth_unknown)
    depth = svn_depth_infinity;

  cswb.db = wc_ctx->db;
  cswb.resolve_text = resolve_text;
  cswb.resolve_prop = resolve_prop;
  cswb.resolve_tree = resolve_tree;
  cswb.conflict_choice = conflict_choice;

  cswb.conflict_func = conflict_func;
  cswb.conflict_baton = conflict_baton;

  cswb.cancel_func = cancel_func;
  cswb.cancel_baton = cancel_baton;

  cswb.notify_func = notify_func;
  cswb.notify_baton = notify_baton;

  cswb.resolved_one = FALSE;
  cswb.resolve_later = (depth != svn_depth_empty)
                          ? apr_hash_make(scratch_pool)
                          : ((void*)0);

  if (notify_func)
    notify_func(notify_baton,
                svn_wc_create_notify(local_abspath,
                                    svn_wc_notify_conflict_resolver_starting,
                                    scratch_pool),
                scratch_pool);

  err = svn_wc_walk_status(wc_ctx,
                           local_abspath,
                           depth,
                           FALSE ,
                           FALSE ,
                           TRUE ,
                           ((void*)0) ,
                           conflict_status_walker, &cswb,
                           cancel_func, cancel_baton,
                           scratch_pool);



  while (!err && cswb.resolve_later && apr_hash_count(cswb.resolve_later))
    {
      apr_hash_index_t *hi;
      svn_wc_status3_t *status = ((void*)0);
      const char *tc_abspath = ((void*)0);

      if (iterpool)
        svn_pool_clear(iterpool);
      else
        iterpool = svn_pool_create(scratch_pool);

      hi = apr_hash_first(scratch_pool, cswb.resolve_later);
      cswb.resolve_later = apr_hash_make(scratch_pool);
      cswb.resolved_one = FALSE;

      for (; hi && !err; hi = apr_hash_next(hi))
        {
          const char *relpath;
          svn_pool_clear(iterpool);

          tc_abspath = apr_hash_this_key(hi);

          if (cancel_func)
            SVN_ERR(cancel_func(cancel_baton));

          relpath = svn_dirent_skip_ancestor(local_abspath,
                                             tc_abspath);

          if (!relpath
              || (depth >= svn_depth_empty
                  && depth < svn_depth_infinity
                  && strchr(relpath, '/')))
            {
              continue;
            }

          SVN_ERR(svn_wc_status3(&status, wc_ctx, tc_abspath,
                                 iterpool, iterpool));

          if (depth == svn_depth_files
              && status->kind == svn_node_dir)
            continue;

          err = svn_error_trace(conflict_status_walker(&cswb, tc_abspath,
                                                       status, scratch_pool));
        }






      if (!cswb.resolved_one && !err && tc_abspath
          && apr_hash_count(cswb.resolve_later))
        {



          cswb.resolve_later = ((void*)0);


          err = svn_error_trace(conflict_status_walker(&cswb, tc_abspath,
                                                       status, scratch_pool));

          SVN_ERR_ASSERT(err != ((void*)0));

          err = svn_error_createf(
                    SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, err,
                    _("Unable to resolve pending conflict on '%s'"),
                    svn_dirent_local_style(tc_abspath, scratch_pool));
          break;
        }
    }

  if (iterpool)
    svn_pool_destroy(iterpool);

  if (err && err->apr_err != SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE)
    err = svn_error_createf(
                SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, err,
                _("Unable to resolve conflicts on '%s'"),
                svn_dirent_local_style(local_abspath, scratch_pool));

  SVN_ERR(err);

  if (notify_func)
    notify_func(notify_baton,
                svn_wc_create_notify(local_abspath,
                                    svn_wc_notify_conflict_resolver_done,
                                    scratch_pool),
                scratch_pool);

  return SVN_NO_ERROR;
}
