
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {int wrapped_edit_baton; TYPE_1__* wrapped_editor; int indent_level; int out; } ;
struct dir_baton {void* edit_baton; int wrapped_dir_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* open_root ) (int ,int ,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct dir_baton* apr_palloc (int *,int) ;
 int stub1 (int ,int ,int *,int *) ;
 int svn_stream_printf (int ,int *,char*,int ) ;
 int write_indent (struct edit_baton*,int *) ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *dir_baton = apr_palloc(pool, sizeof(*dir_baton));

  SVN_ERR(write_indent(eb, pool));
  SVN_ERR(svn_stream_printf(eb->out, pool, "open_root : %ld\n",
                            base_revision));
  eb->indent_level++;

  SVN_ERR(eb->wrapped_editor->open_root(eb->wrapped_edit_baton,
                                        base_revision,
                                        pool,
                                        &dir_baton->wrapped_dir_baton));

  dir_baton->edit_baton = edit_baton;

  *root_baton = dir_baton;

  return SVN_NO_ERROR;
}
