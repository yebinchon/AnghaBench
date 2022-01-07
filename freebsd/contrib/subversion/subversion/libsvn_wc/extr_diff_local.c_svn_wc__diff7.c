
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int (* dir_closed ) (int ,int ,int ,int ,TYPE_2__ const*,int ) ;int (* dir_changed ) (int ,int ,int ,int ,int ,scalar_t__,int ,TYPE_2__ const*,int ) ;} ;
typedef TYPE_2__ svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct node_state_t {int pool; struct node_state_t* parent; int baton; int right_src; int left_src; int relpath; scalar_t__ propchanges; int right_props; int left_props; int skip; } ;
struct diff_baton {char const* anchor_abspath; int ignore_ancestry; struct node_state_t* cur; int * pool; TYPE_2__ const* processor; int db; int member_0; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_15__ {scalar_t__ nelts; } ;
typedef TYPE_3__ apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* apr_pstrdup (int *,int ) ;
 int diff_status_callback ;
 int stub1 (int ,int ,int ,int ,int ,scalar_t__,int ,TYPE_2__ const*,int ) ;
 int stub2 (int ,int ,int ,int ,TYPE_2__ const*,int ) ;
 void* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_skip_ancestor (char const*,char const*) ;
 int svn_hash_from_cstring_keys (int **,TYPE_3__ const*,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int ) ;
 TYPE_2__* svn_wc__changelist_filter_tree_processor_create (TYPE_2__ const*,TYPE_1__*,char const*,int *,int *) ;
 int svn_wc__db_is_wcroot (int*,int ,char const*,int *) ;
 int svn_wc__db_read_kind (scalar_t__*,int ,char const*,int,int,int,int *) ;
 int svn_wc__internal_walk_status (int ,char const*,int ,int,int,int,int *,int ,struct diff_baton*,int ,void*,int *) ;

svn_error_t *
svn_wc__diff7(const char **root_relpath,
              svn_boolean_t *root_is_dir,
              svn_wc_context_t *wc_ctx,
              const char *local_abspath,
              svn_depth_t depth,
              svn_boolean_t ignore_ancestry,
              const apr_array_header_t *changelist_filter,
              const svn_diff_tree_processor_t *diff_processor,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  struct diff_baton eb = { 0 };
  svn_node_kind_t kind;
  svn_boolean_t get_all;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  SVN_ERR(svn_wc__db_read_kind(&kind, wc_ctx->db, local_abspath,
                               FALSE ,
                               TRUE ,
                               FALSE ,
                               scratch_pool));

  eb.anchor_abspath = local_abspath;

  if (root_relpath)
    {
      svn_boolean_t is_wcroot;

      SVN_ERR(svn_wc__db_is_wcroot(&is_wcroot,
                                   wc_ctx->db, local_abspath, scratch_pool));

      if (!is_wcroot)
        eb.anchor_abspath = svn_dirent_dirname(local_abspath, scratch_pool);
    }
  else if (kind != svn_node_dir)
    eb.anchor_abspath = svn_dirent_dirname(local_abspath, scratch_pool);

  if (root_relpath)
    *root_relpath = apr_pstrdup(result_pool,
                                svn_dirent_skip_ancestor(eb.anchor_abspath,
                                                         local_abspath));
  if (root_is_dir)
    *root_is_dir = (kind == svn_node_dir);


  if (changelist_filter && changelist_filter->nelts)
    {
      apr_hash_t *changelist_hash;

      SVN_ERR(svn_hash_from_cstring_keys(&changelist_hash, changelist_filter,
                                         result_pool));
      diff_processor = svn_wc__changelist_filter_tree_processor_create(
                         diff_processor, wc_ctx, local_abspath,
                         changelist_hash, result_pool);
    }

  eb.db = wc_ctx->db;
  eb.processor = diff_processor;
  eb.ignore_ancestry = ignore_ancestry;
  eb.pool = scratch_pool;

  if (ignore_ancestry)
    get_all = TRUE;
  else
    get_all = FALSE;


  SVN_ERR(svn_wc__internal_walk_status(wc_ctx->db, local_abspath, depth,
                                       get_all,
                                       TRUE ,
                                       FALSE ,
                                       ((void*)0) ,
                                       diff_status_callback, &eb,
                                       cancel_func, cancel_baton,
                                       scratch_pool));


  while (eb.cur)
    {
      struct node_state_t *ns = eb.cur;

      if (!ns->skip)
        {
          if (ns->propchanges)
            SVN_ERR(diff_processor->dir_changed(ns->relpath,
                                                ns->left_src,
                                                ns->right_src,
                                                ns->left_props,
                                                ns->right_props,
                                                ns->propchanges,
                                                ns->baton,
                                                diff_processor,
                                                ns->pool));
          else
            SVN_ERR(diff_processor->dir_closed(ns->relpath,
                                               ns->left_src,
                                               ns->right_src,
                                               ns->baton,
                                               diff_processor,
                                               ns->pool));
        }
      eb.cur = ns->parent;
      svn_pool_clear(ns->pool);
    }

  return SVN_NO_ERROR;
}
