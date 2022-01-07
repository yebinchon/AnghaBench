
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_15__ {int * (* cb_alter_file ) (int ,char const*,int ,TYPE_3__ const*,int *,int *,int ) ;} ;
struct TYPE_16__ {int scratch_pool; int baton; TYPE_1__ funcs; } ;
typedef TYPE_2__ svn_editor_t ;
struct TYPE_17__ {scalar_t__ kind; } ;
typedef TYPE_3__ svn_checksum_t ;
typedef int apr_hash_t ;


 int END_CALLBACK (TYPE_2__*) ;
 int MARK_COMPLETED (TYPE_2__*,char const*) ;
 int MARK_PARENT_STABLE (TYPE_2__*,char const*) ;
 int SHOULD_ALLOW_ALTER (TYPE_2__*,char const*) ;
 int SHOULD_NOT_BE_FINISHED (TYPE_2__*) ;
 int START_CALLBACK (TYPE_2__*) ;
 scalar_t__ SVN_EDITOR_CHECKSUM_KIND ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int VERIFY_PARENT_MAY_EXIST (TYPE_2__*,char const*) ;
 int check_cancel (TYPE_2__*) ;
 int * stub1 (int ,char const*,int ,TYPE_3__ const*,int *,int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_pool_clear (int ) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_editor_alter_file(svn_editor_t *editor,
                      const char *relpath,
                      svn_revnum_t revision,
                      const svn_checksum_t *checksum,
                      svn_stream_t *contents,
                      apr_hash_t *props)
{
  svn_error_t *err = SVN_NO_ERROR;

  SVN_ERR_ASSERT(svn_relpath_is_canonical(relpath));
  SVN_ERR_ASSERT((checksum != ((void*)0) && contents != ((void*)0))
                 || (checksum == ((void*)0) && contents == ((void*)0)));
  SVN_ERR_ASSERT(props != ((void*)0) || checksum != ((void*)0));
  if (checksum)
    SVN_ERR_ASSERT(checksum->kind == SVN_EDITOR_CHECKSUM_KIND);
  SHOULD_NOT_BE_FINISHED(editor);
  SHOULD_ALLOW_ALTER(editor, relpath);
  VERIFY_PARENT_MAY_EXIST(editor, relpath);

  SVN_ERR(check_cancel(editor));

  if (editor->funcs.cb_alter_file)
    {
      START_CALLBACK(editor);
      err = editor->funcs.cb_alter_file(editor->baton,
                                        relpath, revision,
                                        checksum, contents, props,
                                        editor->scratch_pool);
      END_CALLBACK(editor);
    }

  MARK_COMPLETED(editor, relpath);
  MARK_PARENT_STABLE(editor, relpath);

  svn_pool_clear(editor->scratch_pool);
  return svn_error_trace(err);
}
