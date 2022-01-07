
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct ev2_edit_baton {int editor; int closed; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int run_ev2_actions (void*,int *) ;
 int svn_editor_complete (int ) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
ev2_close_edit(void *edit_baton,
               apr_pool_t *scratch_pool)
{
  struct ev2_edit_baton *eb = edit_baton;

  SVN_ERR(run_ev2_actions(edit_baton, scratch_pool));
  eb->closed = TRUE;
  return svn_error_trace(svn_editor_complete(eb->editor));
}
