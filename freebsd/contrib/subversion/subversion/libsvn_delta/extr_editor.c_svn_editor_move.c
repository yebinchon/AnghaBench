
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_16__ {int * (* cb_move ) (int ,char const*,int ,char const*,int ,int ) ;} ;
struct TYPE_17__ {int scratch_pool; int baton; TYPE_1__ funcs; } ;
typedef TYPE_2__ svn_editor_t ;


 int CHILD_DELETIONS_ALLOWED (TYPE_2__*,char const*) ;
 int CLEAR_INCOMPLETE (TYPE_2__*,char const*) ;
 int END_CALLBACK (TYPE_2__*) ;
 int MARK_ALLOW_ADD (TYPE_2__*,char const*) ;
 int MARK_ALLOW_ALTER (TYPE_2__*,char const*) ;
 int MARK_PARENT_STABLE (TYPE_2__*,char const*) ;
 int SHOULD_ALLOW_ADD (TYPE_2__*,char const*) ;
 int SHOULD_NOT_BE_COMPLETED (TYPE_2__*,char const*) ;
 int SHOULD_NOT_BE_FINISHED (TYPE_2__*) ;
 int START_CALLBACK (TYPE_2__*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int VERIFY_PARENT_MAY_EXIST (TYPE_2__*,char const*) ;
 int check_cancel (TYPE_2__*) ;
 int * stub1 (int ,char const*,int ,char const*,int ,int ) ;
 int * svn_error_trace (int *) ;
 int svn_pool_clear (int ) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_editor_move(svn_editor_t *editor,
                const char *src_relpath,
                svn_revnum_t src_revision,
                const char *dst_relpath,
                svn_revnum_t replaces_rev)
{
  svn_error_t *err = SVN_NO_ERROR;

  SVN_ERR_ASSERT(svn_relpath_is_canonical(src_relpath));
  SVN_ERR_ASSERT(svn_relpath_is_canonical(dst_relpath));
  SHOULD_NOT_BE_FINISHED(editor);
  SHOULD_NOT_BE_COMPLETED(editor, src_relpath);
  SHOULD_ALLOW_ADD(editor, dst_relpath);
  VERIFY_PARENT_MAY_EXIST(editor, src_relpath);
  CHILD_DELETIONS_ALLOWED(editor, src_relpath);
  VERIFY_PARENT_MAY_EXIST(editor, dst_relpath);

  SVN_ERR(check_cancel(editor));

  if (editor->funcs.cb_move)
    {
      START_CALLBACK(editor);
      err = editor->funcs.cb_move(editor->baton, src_relpath, src_revision,
                                  dst_relpath, replaces_rev,
                                  editor->scratch_pool);
      END_CALLBACK(editor);
    }

  MARK_ALLOW_ADD(editor, src_relpath);
  MARK_PARENT_STABLE(editor, src_relpath);
  MARK_ALLOW_ALTER(editor, dst_relpath);
  MARK_PARENT_STABLE(editor, dst_relpath);
  CLEAR_INCOMPLETE(editor, dst_relpath);

  svn_pool_clear(editor->scratch_pool);
  return svn_error_trace(err);
}
