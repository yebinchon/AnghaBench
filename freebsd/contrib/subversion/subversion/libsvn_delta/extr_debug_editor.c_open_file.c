
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct file_baton {struct edit_baton* edit_baton; int wrapped_file_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; int indent_level; int out; } ;
struct dir_baton {int wrapped_dir_baton; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* open_file ) (char const*,int ,int ,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct file_baton* apr_palloc (int *,int) ;
 int stub1 (char const*,int ,int ,int *,int *) ;
 int svn_stream_printf (int ,int *,char*,char const*,int ) ;
 int write_indent (struct edit_baton*,int *) ;

__attribute__((used)) static svn_error_t *
open_file(const char *path,
          void *parent_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  struct file_baton *fb = apr_palloc(pool, sizeof(*fb));

  SVN_ERR(write_indent(eb, pool));
  SVN_ERR(svn_stream_printf(eb->out, pool, "open_file : '%s':%ld\n",
                            path, base_revision));

  eb->indent_level++;

  SVN_ERR(eb->wrapped_editor->open_file(path,
                                        pb->wrapped_dir_baton,
                                        base_revision,
                                        pool,
                                        &fb->wrapped_file_baton));

  fb->edit_baton = eb;
  *file_baton = fb;

  return SVN_NO_ERROR;
}
