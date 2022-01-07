
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_8__ {int * (* cb_complete ) (int ,int ) ;} ;
struct TYPE_9__ {int scratch_pool; int baton; TYPE_1__ funcs; int pending_incomplete_children; } ;
typedef TYPE_2__ svn_editor_t ;


 int END_CALLBACK (TYPE_2__*) ;
 int MARK_FINISHED (TYPE_2__*) ;
 int SHOULD_NOT_BE_FINISHED (TYPE_2__*) ;
 int START_CALLBACK (TYPE_2__*) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int ) ;
 int * stub1 (int ,int ) ;
 int * svn_error_trace (int *) ;
 int svn_pool_clear (int ) ;

svn_error_t *
svn_editor_complete(svn_editor_t *editor)
{
  svn_error_t *err = SVN_NO_ERROR;

  SHOULD_NOT_BE_FINISHED(editor);




  if (editor->funcs.cb_complete)
    {
      START_CALLBACK(editor);
      err = editor->funcs.cb_complete(editor->baton, editor->scratch_pool);
      END_CALLBACK(editor);
    }

  MARK_FINISHED(editor);

  svn_pool_clear(editor->scratch_pool);
  return svn_error_trace(err);
}
