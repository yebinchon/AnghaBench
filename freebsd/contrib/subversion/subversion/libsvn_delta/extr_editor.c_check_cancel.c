
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int cancel_baton; int * (* cancel_func ) (int ) ;} ;
typedef TYPE_1__ svn_editor_t ;


 int END_CALLBACK (TYPE_1__*) ;
 int START_CALLBACK (TYPE_1__*) ;
 int * stub1 (int ) ;
 int * svn_error_trace (int *) ;

__attribute__((used)) static svn_error_t *
check_cancel(svn_editor_t *editor)
{
  svn_error_t *err = ((void*)0);

  if (editor->cancel_func)
    {
      START_CALLBACK(editor);
      err = editor->cancel_func(editor->cancel_baton);
      END_CALLBACK(editor);
    }

  return svn_error_trace(err);
}
