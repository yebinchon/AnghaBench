
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct file_baton {struct edit_baton* edit_baton; int wrapped_file_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; int cancel_baton; int (* cancel_func ) (int ) ;} ;
struct dir_baton {int wrapped_dir_baton; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* add_file ) (char const*,int ,char const*,int ,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct file_baton* apr_palloc (int *,int) ;
 int stub1 (int ) ;
 int stub2 (char const*,int ,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_revision,
         apr_pool_t *pool,
         void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  struct file_baton *fb = apr_palloc(pool, sizeof(*fb));

  SVN_ERR(eb->cancel_func(eb->cancel_baton));

  SVN_ERR(eb->wrapped_editor->add_file(path,
                                       pb->wrapped_dir_baton,
                                       copyfrom_path,
                                       copyfrom_revision,
                                       pool,
                                       &fb->wrapped_file_baton));

  fb->edit_baton = eb;
  *file_baton = fb;

  return SVN_NO_ERROR;
}
