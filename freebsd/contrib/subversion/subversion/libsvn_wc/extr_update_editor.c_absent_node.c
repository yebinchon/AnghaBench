
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_wc_notify_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct edit_baton {int cancel_baton; int cancel_func; int conflict_baton; scalar_t__ conflict_func; int db; int * target_revision; int repos_uuid; int repos_root; int notify_baton; int (* notify_func ) (int ,int *,int *) ;} ;
struct dir_baton {int new_repos_relpath; int edit_obstructed; int shadowed; int local_abspath; scalar_t__ skip_this; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 TYPE_1__* SVN_NO_ERROR ;
 int check_tree_conflict (int **,struct edit_baton*,char const*,scalar_t__,int ,int ,int ,int *,int *) ;
 int complete_conflict (int *,struct edit_baton*,char const*,int *,int ,char const*,int ,int ,int *,int *,int *) ;
 int delete_entry (char const*,int ,struct dir_baton*,int *) ;
 int do_notification (struct edit_baton*,char const*,int ,int ,int *) ;
 int mark_directory_edited (struct dir_baton*,int *) ;
 int stub1 (int ,int *,int *) ;
 char* svn_dirent_basename (char const*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_node_unknown ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_join (int ,char const*,int *) ;
 int svn_wc__conflict_invoke_resolver (int ,char const*,int ,int *,int *,scalar_t__,int ,int ,int ,int *) ;
 int svn_wc__db_base_add_excluded_node (int ,char const*,char const*,int ,int ,int ,int ,scalar_t__,int *,int *,int *) ;
 int svn_wc__db_base_get_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int ,char const*,int *,int *) ;
 int svn_wc__db_is_wcroot (scalar_t__*,int ,char const*,int *) ;
 TYPE_1__* svn_wc__db_read_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;
 int svn_wc_conflict_action_add ;
 int * svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_tree_conflict ;
 int svn_wc_notify_update_skip_obstruction ;

__attribute__((used)) static svn_error_t *
absent_node(const char *path,
            svn_node_kind_t absent_kind,
            void *parent_baton,
            apr_pool_t *pool)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  const char *name = svn_dirent_basename(path, ((void*)0));
  const char *local_abspath;
  svn_error_t *err;
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_skel_t *tree_conflict = ((void*)0);

  if (pb->skip_this)
    return SVN_NO_ERROR;

  local_abspath = svn_dirent_join(pb->local_abspath, name, scratch_pool);


  err = svn_wc__db_read_info(&status, &kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             eb->db, local_abspath,
                             scratch_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);
      status = svn_wc__db_status_not_present;
      kind = svn_node_unknown;
    }

  if (status != svn_wc__db_status_server_excluded)
    SVN_ERR(mark_directory_edited(pb, scratch_pool));


  if (status == svn_wc__db_status_normal)
    {
      svn_boolean_t wcroot;


      SVN_ERR(svn_wc__db_is_wcroot(&wcroot, eb->db, local_abspath,
                                   scratch_pool));

      if (wcroot)
        {
        }
      else
        {
          svn_boolean_t file_external;
          svn_revnum_t revnum;

          SVN_ERR(svn_wc__db_base_get_info(((void*)0), ((void*)0), &revnum, ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           &file_external,
                                           eb->db, local_abspath,
                                           scratch_pool, scratch_pool));

          if (file_external)
            {
              if (eb->notify_func)
                {
                  svn_wc_notify_t *notify;
                  notify = svn_wc_create_notify(
                                    local_abspath,
                                    svn_wc_notify_update_skip_obstruction,
                                    scratch_pool);

                  eb->notify_func(eb->notify_baton, notify, scratch_pool);
                }

              svn_pool_destroy(scratch_pool);
              return SVN_NO_ERROR;
            }
          else
            {



              SVN_ERR(delete_entry(path, revnum, pb, scratch_pool));



            }
        }
    }
  else if (status == svn_wc__db_status_not_present
           || status == svn_wc__db_status_server_excluded
           || status == svn_wc__db_status_excluded)
    {


    }
  else
    {



      SVN_ERR_ASSERT(status != svn_wc__db_status_normal);

      if (!pb->shadowed && !pb->edit_obstructed)
        SVN_ERR(check_tree_conflict(&tree_conflict, eb, local_abspath,
                                    status, FALSE, svn_node_unknown,
                                    svn_wc_conflict_action_add,
                                    scratch_pool, scratch_pool));

    }

  {
    const char *repos_relpath;
    repos_relpath = svn_relpath_join(pb->new_repos_relpath, name, scratch_pool);

    if (tree_conflict)
      SVN_ERR(complete_conflict(tree_conflict, eb, local_abspath,
                                ((void*)0), SVN_INVALID_REVNUM, repos_relpath,
                                kind, svn_node_unknown, ((void*)0),
                                scratch_pool, scratch_pool));



    SVN_ERR(svn_wc__db_base_add_excluded_node(eb->db, local_abspath,
                                              repos_relpath, eb->repos_root,
                                              eb->repos_uuid,
                                              *(eb->target_revision),
                                              absent_kind,
                                              svn_wc__db_status_server_excluded,
                                              tree_conflict, ((void*)0),
                                              scratch_pool));

    if (tree_conflict)
      {
        if (eb->conflict_func)
          SVN_ERR(svn_wc__conflict_invoke_resolver(eb->db, local_abspath,
                                                   kind,
                                                   tree_conflict,
                                                   ((void*)0) ,
                                                   eb->conflict_func,
                                                   eb->conflict_baton,
                                                   eb->cancel_func,
                                                   eb->cancel_baton,
                                                   scratch_pool));
        do_notification(eb, local_abspath, kind, svn_wc_notify_tree_conflict,
                        scratch_pool);
      }
  }

  svn_pool_destroy(scratch_pool);

  return SVN_NO_ERROR;
}
