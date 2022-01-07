
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {int wrapped_edit_baton; TYPE_1__* wrapped_editor; int out; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* set_target_revision ) (int ,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * stub1 (int ,int ,int *) ;
 int svn_stream_printf (int ,int *,char*,int ) ;
 int write_indent (struct edit_baton*,int *) ;

__attribute__((used)) static svn_error_t *
set_target_revision(void *edit_baton,
                    svn_revnum_t target_revision,
                    apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;

  SVN_ERR(write_indent(eb, pool));
  SVN_ERR(svn_stream_printf(eb->out, pool, "set_target_revision : %ld\n",
                            target_revision));

  return eb->wrapped_editor->set_target_revision(eb->wrapped_edit_baton,
                                                 target_revision,
                                                 pool);
}
