
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ svn_wc__db_status_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_depth_t ;
struct edit_baton {char* target_basename; scalar_t__ requested_depth; int * pool; int cancel_baton; int cancel_func; int wcroot_abspath; int db; int target_abspath; scalar_t__ switch_repos_relpath; int notify_baton; int notify_func; int edited; int wcroot_iprops; int skipped_trees; int * target_revision; int repos_uuid; int repos_root; int target_deleted; int anchor_abspath; int root_opened; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int apr_pool_cleanup_kill (int *,struct edit_baton*,int ) ;
 int cleanup_edit_baton ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_infinity ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_wc__db_base_get_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,int ,int *,int *) ;
 int svn_wc__db_base_remove (int ,int ,int ,int ,int ,int ,int *,int *,int *) ;
 int svn_wc__db_op_bump_revisions_post_update (int ,int ,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int,int ,int ,int *) ;
 int svn_wc__db_read_props_streamily (int ,int ,scalar_t__,int ,int *,int ,struct edit_baton*,int ,int ,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 int svn_wc__db_temp_op_end_directory_update (int ,int ,int *) ;
 int svn_wc__wq_run (int ,int ,int ,int ,int *) ;
 int update_keywords_after_switch_cb ;

__attribute__((used)) static svn_error_t *
close_edit(void *edit_baton,
           apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;
  apr_pool_t *scratch_pool = eb->pool;



  if (! eb->root_opened
      && *eb->target_basename == '\0')
    {

      SVN_ERR(svn_wc__db_temp_op_end_directory_update(eb->db,
                                                      eb->anchor_abspath,
                                                      scratch_pool));
    }
  if (! eb->target_deleted)
    {
      SVN_ERR(svn_wc__db_op_bump_revisions_post_update(eb->db,
                                                       eb->target_abspath,
                                                       eb->requested_depth,
                                                       eb->switch_repos_relpath,
                                                       eb->repos_root,
                                                       eb->repos_uuid,
                                                       *(eb->target_revision),
                                                       eb->skipped_trees,
                                                       eb->wcroot_iprops,
                                                       ! eb->edited,
                                                       eb->notify_func,
                                                       eb->notify_baton,
                                                       eb->pool));

      if (*eb->target_basename != '\0')
        {
          svn_wc__db_status_t status;
          svn_error_t *err;
          err = svn_wc__db_base_get_info(&status, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         eb->db, eb->target_abspath,
                                         scratch_pool, scratch_pool);
          if (err)
            {
              if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
                return svn_error_trace(err);

              svn_error_clear(err);
            }
          else if (status == svn_wc__db_status_excluded)
            {






              SVN_ERR(svn_wc__db_base_remove(eb->db, eb->target_abspath,
                                             TRUE, FALSE, FALSE,
                                             SVN_INVALID_REVNUM,
                                             ((void*)0), ((void*)0), scratch_pool));
            }
        }
    }



  if (eb->switch_repos_relpath)
    {
      svn_depth_t depth;

      if (eb->requested_depth > svn_depth_empty)
        depth = eb->requested_depth;
      else
        depth = svn_depth_infinity;

      SVN_ERR(svn_wc__db_read_props_streamily(eb->db,
                                              eb->target_abspath,
                                              depth,
                                              FALSE,
                                              ((void*)0),
                                              update_keywords_after_switch_cb,
                                              eb,
                                              eb->cancel_func,
                                              eb->cancel_baton,
                                              scratch_pool));
    }




  apr_pool_cleanup_kill(eb->pool, eb, cleanup_edit_baton);

  SVN_ERR(svn_wc__wq_run(eb->db, eb->wcroot_abspath,
                         eb->cancel_func, eb->cancel_baton,
                         eb->pool));
  svn_pool_destroy(eb->pool);

  return SVN_NO_ERROR;
}
