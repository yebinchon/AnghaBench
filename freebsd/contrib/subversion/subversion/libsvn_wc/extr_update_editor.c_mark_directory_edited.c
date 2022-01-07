
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct dir_baton {void* already_notified; int local_abspath; TYPE_1__* edit_baton; scalar_t__ edit_conflict; int pool; int new_repos_relpath; int old_revision; int old_repos_relpath; void* edited; struct dir_baton* parent_baton; } ;
typedef int apr_pool_t ;
struct TYPE_3__ {int db; } ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int * complete_conflict (scalar_t__,TYPE_1__*,int ,int ,int ,int ,int ,int ,int *,int ,int *) ;
 int do_notification (TYPE_1__*,int ,int ,int ,int *) ;
 int svn_node_dir ;
 int * svn_wc__db_op_mark_conflict (int ,int ,scalar_t__,int *,int *) ;
 int svn_wc_notify_tree_conflict ;

__attribute__((used)) static svn_error_t *
mark_directory_edited(struct dir_baton *db, apr_pool_t *scratch_pool)
{
  if (db->edited)
    return SVN_NO_ERROR;

  if (db->parent_baton)
    SVN_ERR(mark_directory_edited(db->parent_baton, scratch_pool));

  db->edited = TRUE;

  if (db->edit_conflict)
    {


      SVN_ERR(complete_conflict(db->edit_conflict, db->edit_baton,
                                db->local_abspath,
                                db->old_repos_relpath, db->old_revision,
                                db->new_repos_relpath,
                                svn_node_dir, svn_node_dir,
                                ((void*)0),
                                db->pool, scratch_pool));
      SVN_ERR(svn_wc__db_op_mark_conflict(db->edit_baton->db,
                                          db->local_abspath,
                                          db->edit_conflict, ((void*)0),
                                          scratch_pool));

      do_notification(db->edit_baton, db->local_abspath, svn_node_dir,
                      svn_wc_notify_tree_conflict, scratch_pool);
      db->already_notified = TRUE;
    }

  return SVN_NO_ERROR;
}
