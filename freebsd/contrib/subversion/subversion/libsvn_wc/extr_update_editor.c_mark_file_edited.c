
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct file_baton {void* already_notified; int local_abspath; TYPE_1__* edit_baton; scalar_t__ edit_conflict; int pool; int new_repos_relpath; int old_revision; int old_repos_relpath; void* edited; int dir_baton; } ;
typedef int apr_pool_t ;
struct TYPE_3__ {int db; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int complete_conflict (scalar_t__,TYPE_1__*,int ,int ,int ,int ,int ,int ,int *,int ,int *) ;
 int do_notification (TYPE_1__*,int ,int ,int ,int *) ;
 int mark_directory_edited (int ,int *) ;
 int svn_node_file ;
 int svn_wc__db_op_mark_conflict (int ,int ,scalar_t__,int *,int *) ;
 int svn_wc_notify_tree_conflict ;

__attribute__((used)) static svn_error_t *
mark_file_edited(struct file_baton *fb, apr_pool_t *scratch_pool)
{
  if (fb->edited)
    return SVN_NO_ERROR;

  SVN_ERR(mark_directory_edited(fb->dir_baton, scratch_pool));

  fb->edited = TRUE;

  if (fb->edit_conflict)
    {


      SVN_ERR(complete_conflict(fb->edit_conflict, fb->edit_baton,
                                fb->local_abspath, fb->old_repos_relpath,
                                fb->old_revision, fb->new_repos_relpath,
                                svn_node_file, svn_node_file,
                                ((void*)0),
                                fb->pool, scratch_pool));

      SVN_ERR(svn_wc__db_op_mark_conflict(fb->edit_baton->db,
                                          fb->local_abspath,
                                          fb->edit_conflict, ((void*)0),
                                          scratch_pool));

      do_notification(fb->edit_baton, fb->local_abspath, svn_node_file,
                      svn_wc_notify_tree_conflict, scratch_pool);
      fb->already_notified = TRUE;
    }

  return SVN_NO_ERROR;
}
