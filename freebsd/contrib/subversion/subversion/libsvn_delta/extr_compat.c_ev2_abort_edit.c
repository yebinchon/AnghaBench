
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct ev2_edit_baton {int editor; int closed; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int run_ev2_actions (void*,int *) ;
 int svn_editor_abort (int ) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
ev2_abort_edit(void *edit_baton,
               apr_pool_t *scratch_pool)
{
  struct ev2_edit_baton *eb = edit_baton;

  SVN_ERR(run_ev2_actions(edit_baton, scratch_pool));
  if (!eb->closed)
    return svn_error_trace(svn_editor_abort(eb->editor));
  else
    return SVN_NO_ERROR;
}
