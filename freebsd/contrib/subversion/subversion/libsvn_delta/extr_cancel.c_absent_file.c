
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct file_baton {int wrapped_file_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; int cancel_baton; int (* cancel_func ) (int ) ;} ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* absent_file ) (char const*,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int stub1 (int ) ;
 int * stub2 (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
absent_file(const char *path,
            void *file_baton,
            apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;

  SVN_ERR(eb->cancel_func(eb->cancel_baton));

  return eb->wrapped_editor->absent_file(path, fb->wrapped_file_baton,
                                         pool);
}
