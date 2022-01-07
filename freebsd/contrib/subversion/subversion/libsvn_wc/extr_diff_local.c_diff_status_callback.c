
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ node_status; scalar_t__ text_status; scalar_t__ prop_status; scalar_t__ kind; char const* moved_from_abspath; int copied; int versioned; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
struct node_state_t {int * baton; int * propchanges; int pool; int left_props; int right_props; scalar_t__ skip_children; struct node_state_t* parent; int right_src; int left_src; int relpath; int skip; int local_abspath; } ;
struct diff_baton {int cancel_baton; int cancel_func; struct node_state_t* cur; TYPE_2__* processor; int anchor_abspath; int * db; int ignore_ancestry; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_11__ {int (* dir_closed ) (int ,int ,int ,int *,TYPE_2__*,int ) ;int (* dir_changed ) (int ,int ,int ,int ,int ,int *,int *,TYPE_2__*,int ) ;} ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int ensure_state (struct diff_baton*,char const*,scalar_t__,int *) ;
 int stub1 (int ,int ,int ,int ,int ,int *,int *,TYPE_2__*,int ) ;
 int stub2 (int ,int ,int ,int *,TYPE_2__*,int ) ;
 int svn_depth_unknown ;
 char const* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_is_ancestor (int ,char const*) ;
 char* svn_dirent_skip_ancestor (int ,char const*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int ) ;
 int svn_prop_diffs (int **,int ,int ,int ) ;
 int svn_wc__db_base_get_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_base_get_props (int *,int *,char const*,int ,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_props (int *,int *,char const*,int ,int *) ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 int svn_wc__diff_base_only_dir (int *,char const*,char const*,int ,int ,TYPE_2__*,int *,int ,int ,int *) ;
 int svn_wc__diff_base_only_file (int *,char const*,char const*,int ,TYPE_2__*,int *,int *) ;
 int svn_wc__diff_base_working_diff (int *,char const*,char const*,int ,TYPE_2__*,int *,scalar_t__,int ,int ,int *) ;
 int svn_wc__diff_local_only_dir (int *,char const*,char const*,int ,char const*,TYPE_2__*,int *,scalar_t__,int ,int ,int *) ;
 int svn_wc__diff_local_only_file (int *,char const*,char const*,char const*,TYPE_2__*,int *,scalar_t__,int ,int ,int *) ;
 scalar_t__ svn_wc_status_conflicted ;
 scalar_t__ svn_wc_status_none ;
 scalar_t__ svn_wc_status_normal ;

__attribute__((used)) static svn_error_t *
diff_status_callback(void *baton,
                     const char *local_abspath,
                     const svn_wc_status3_t *status,
                     apr_pool_t *scratch_pool)
{
  struct diff_baton *eb = baton;
  svn_wc__db_t *db = eb->db;

  if (! status->versioned)
    return SVN_NO_ERROR;

  if (status->node_status == svn_wc_status_conflicted
      && status->text_status == svn_wc_status_none
      && status->prop_status == svn_wc_status_none)
    {

      return SVN_NO_ERROR;
    }


  if (status->node_status == svn_wc_status_normal && !status->copied)
    return SVN_NO_ERROR;


  while (eb->cur
         && !svn_dirent_is_ancestor(eb->cur->local_abspath, local_abspath))
    {
      struct node_state_t *ns = eb->cur;

      if (!ns->skip)
        {
          if (ns->propchanges)
            SVN_ERR(eb->processor->dir_changed(ns->relpath,
                                               ns->left_src,
                                               ns->right_src,
                                               ns->left_props,
                                               ns->right_props,
                                               ns->propchanges,
                                               ns->baton,
                                               eb->processor,
                                               ns->pool));
          else
            SVN_ERR(eb->processor->dir_closed(ns->relpath,
                                              ns->left_src,
                                              ns->right_src,
                                              ns->baton,
                                              eb->processor,
                                              ns->pool));
        }
      eb->cur = ns->parent;
      svn_pool_clear(ns->pool);
    }
  SVN_ERR(ensure_state(eb, svn_dirent_dirname(local_abspath, scratch_pool),
                       FALSE, scratch_pool));

  if (eb->cur && eb->cur->skip_children)
    return SVN_NO_ERROR;






  {
    svn_boolean_t repos_only;
    svn_boolean_t local_only;
    svn_wc__db_status_t db_status;
    svn_boolean_t have_base;
    svn_node_kind_t base_kind;
    svn_node_kind_t db_kind = status->kind;
    svn_depth_t depth_below_here = svn_depth_unknown;

    const char *child_abspath = local_abspath;
    const char *child_relpath = svn_dirent_skip_ancestor(eb->anchor_abspath,
                                                         local_abspath);


    repos_only = FALSE;
    local_only = FALSE;



    SVN_ERR(svn_wc__db_read_info(&db_status, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 &have_base, ((void*)0), ((void*)0),
                                 eb->db, local_abspath,
                                 scratch_pool, scratch_pool));
    if (!have_base)
      {
        local_only = TRUE;
      }
    else if (db_status == svn_wc__db_status_normal
             || db_status == svn_wc__db_status_incomplete)
      {

        base_kind = db_kind;
      }
    else if (db_status == svn_wc__db_status_deleted)
      {
        svn_wc__db_status_t base_status;
        repos_only = TRUE;
        SVN_ERR(svn_wc__db_base_get_info(&base_status, &base_kind, ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0),
                                         eb->db, local_abspath,
                                         scratch_pool, scratch_pool));

        if (base_status != svn_wc__db_status_normal
            && base_status != svn_wc__db_status_incomplete)
          return SVN_NO_ERROR;
      }
    else
      {

        svn_wc__db_status_t base_status;

        SVN_ERR(svn_wc__db_base_get_info(&base_status, &base_kind, ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0),
                                         eb->db, local_abspath,
                                         scratch_pool, scratch_pool));

        if (base_status != svn_wc__db_status_normal
            && base_status != svn_wc__db_status_incomplete)
          local_only = TRUE;
        else if (base_kind != db_kind || !eb->ignore_ancestry)
          {
            repos_only = TRUE;
            local_only = TRUE;
          }
      }

    if (repos_only)
      {

        if (base_kind == svn_node_file)
          SVN_ERR(svn_wc__diff_base_only_file(db, child_abspath,
                                              child_relpath,
                                              SVN_INVALID_REVNUM,
                                              eb->processor,
                                              eb->cur ? eb->cur->baton : ((void*)0),
                                              scratch_pool));
        else if (base_kind == svn_node_dir)
          SVN_ERR(svn_wc__diff_base_only_dir(db, child_abspath,
                                             child_relpath,
                                             SVN_INVALID_REVNUM,
                                             depth_below_here,
                                             eb->processor,
                                             eb->cur ? eb->cur->baton : ((void*)0),
                                             eb->cancel_func,
                                             eb->cancel_baton,
                                             scratch_pool));
      }
    else if (!local_only)
      {

        if (db_kind == svn_node_file)
          {
            SVN_ERR(svn_wc__diff_base_working_diff(db, child_abspath,
                                                   child_relpath,
                                                   SVN_INVALID_REVNUM,
                                                   eb->processor,
                                                   eb->cur
                                                        ? eb->cur->baton
                                                        : ((void*)0),
                                                   FALSE,
                                                   eb->cancel_func,
                                                   eb->cancel_baton,
                                                   scratch_pool));
          }
        else if (db_kind == svn_node_dir)
          {
            SVN_ERR(ensure_state(eb, local_abspath, FALSE, scratch_pool));

            if (status->prop_status != svn_wc_status_none
                && status->prop_status != svn_wc_status_normal)
              {
                apr_array_header_t *propchanges;
                SVN_ERR(svn_wc__db_base_get_props(&eb->cur->left_props,
                                                  eb->db, local_abspath,
                                                  eb->cur->pool,
                                                  scratch_pool));
                SVN_ERR(svn_wc__db_read_props(&eb->cur->right_props,
                                              eb->db, local_abspath,
                                              eb->cur->pool,
                                              scratch_pool));

                SVN_ERR(svn_prop_diffs(&propchanges,
                                       eb->cur->right_props,
                                       eb->cur->left_props,
                                       eb->cur->pool));

                eb->cur->propchanges = propchanges;
              }
          }
      }

    if (local_only && (db_status != svn_wc__db_status_deleted))
      {

        const char *moved_from_relpath = ((void*)0);

        if (status->moved_from_abspath)
          {
            moved_from_relpath = svn_dirent_skip_ancestor(
                                          eb->anchor_abspath,
                                          status->moved_from_abspath);
          }

        if (db_kind == svn_node_file)
          SVN_ERR(svn_wc__diff_local_only_file(db, child_abspath,
                                               child_relpath,
                                               moved_from_relpath,
                                               eb->processor,
                                               eb->cur ? eb->cur->baton : ((void*)0),
                                               FALSE,
                                               eb->cancel_func,
                                               eb->cancel_baton,
                                               scratch_pool));
        else if (db_kind == svn_node_dir)
          SVN_ERR(svn_wc__diff_local_only_dir(db, child_abspath,
                                              child_relpath, depth_below_here,
                                              moved_from_relpath,
                                              eb->processor,
                                              eb->cur ? eb->cur->baton : ((void*)0),
                                              FALSE,
                                              eb->cancel_func,
                                              eb->cancel_baton,
                                              scratch_pool));
      }

    if (db_kind == svn_node_dir && (local_only || repos_only))
      SVN_ERR(ensure_state(eb, local_abspath, TRUE , scratch_pool));
  }

  return SVN_NO_ERROR;
}
