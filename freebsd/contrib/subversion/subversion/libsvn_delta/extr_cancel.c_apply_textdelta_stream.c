
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_txdelta_stream_open_func_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
struct file_baton {int wrapped_file_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; int cancel_baton; int (* cancel_func ) (int ) ;} ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* apply_textdelta_stream ) (TYPE_1__*,int ,char const*,int ,void*,int *) ;} ;


 int SVN_ERR (int ) ;
 int stub1 (int ) ;
 int * stub2 (TYPE_1__*,int ,char const*,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
apply_textdelta_stream(const svn_delta_editor_t *editor,
                       void *file_baton,
                       const char *base_checksum,
                       svn_txdelta_stream_open_func_t open_func,
                       void *open_baton,
                       apr_pool_t *scratch_pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;

  SVN_ERR(eb->cancel_func(eb->cancel_baton));

  return eb->wrapped_editor->apply_textdelta_stream(eb->wrapped_editor,
                                                    fb->wrapped_file_baton,
                                                    base_checksum,
                                                    open_func, open_baton,
                                                    scratch_pool);
}
