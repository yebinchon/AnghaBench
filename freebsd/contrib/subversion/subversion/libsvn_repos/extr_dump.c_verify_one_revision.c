
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_repos_notify_func_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int (* close_edit ) (void*,int *) ;} ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int get_dump_editor (TYPE_1__ const**,void**,int *,int ,char*,int ,int *,int *,int ,int ,void*,int ,int ,int ,int ,int *) ;
 int stub1 (void*,int *) ;
 int svn_delta_get_cancellation_editor (int ,void*,TYPE_1__ const*,void*,TYPE_1__ const**,void**,int *) ;
 int svn_fs_revision_proplist2 (int **,int *,int ,int ,int *,int *) ;
 int svn_fs_revision_root (int **,int *,int ,int *) ;
 int svn_fs_verify_root (int *,int *) ;
 int svn_repos_replay2 (int *,char*,int ,int ,TYPE_1__ const*,void*,int *,int *,int *) ;
 int svn_stream_empty (int *) ;
 int verify_close_directory ;

__attribute__((used)) static svn_error_t *
verify_one_revision(svn_fs_t *fs,
                    svn_revnum_t rev,
                    svn_repos_notify_func_t notify_func,
                    void *notify_baton,
                    svn_revnum_t start_rev,
                    svn_boolean_t check_normalization,
                    svn_cancel_func_t cancel_func,
                    void *cancel_baton,
                    apr_pool_t *scratch_pool)
{
  const svn_delta_editor_t *dump_editor;
  void *dump_edit_baton;
  svn_fs_root_t *to_root;
  apr_hash_t *props;
  const svn_delta_editor_t *cancel_editor;
  void *cancel_edit_baton;


  SVN_ERR(get_dump_editor(&dump_editor, &dump_edit_baton,
                          fs, rev, "",
                          svn_stream_empty(scratch_pool),
                          ((void*)0), ((void*)0),
                          verify_close_directory,
                          notify_func, notify_baton,
                          start_rev,
                          FALSE, TRUE,
                          check_normalization,
                          scratch_pool));
  SVN_ERR(svn_delta_get_cancellation_editor(cancel_func, cancel_baton,
                                            dump_editor, dump_edit_baton,
                                            &cancel_editor,
                                            &cancel_edit_baton,
                                            scratch_pool));
  SVN_ERR(svn_fs_revision_root(&to_root, fs, rev, scratch_pool));
  SVN_ERR(svn_fs_verify_root(to_root, scratch_pool));
  SVN_ERR(svn_repos_replay2(to_root, "", SVN_INVALID_REVNUM, FALSE,
                            cancel_editor, cancel_edit_baton,
                            ((void*)0), ((void*)0), scratch_pool));



  SVN_ERR(cancel_editor->close_edit(cancel_edit_baton, scratch_pool));

  SVN_ERR(svn_fs_revision_proplist2(&props, fs, rev, FALSE, scratch_pool,
                                    scratch_pool));

  return SVN_NO_ERROR;
}
