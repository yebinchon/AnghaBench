
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct context {TYPE_1__* editor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* absent_file ) (char const*,void*,int *) ;int * (* absent_directory ) (char const*,void*,int *) ;} ;


 int SVN_ERR_ASSERT (char const*) ;
 int * stub1 (char const*,void*,int *) ;
 int * stub2 (char const*,void*,int *) ;
 scalar_t__ svn_node_dir ;

__attribute__((used)) static svn_error_t *
absent_file_or_dir(struct context *c,
                   void *dir_baton,
                   const char *edit_path,
                   svn_node_kind_t tgt_kind,
                   apr_pool_t *pool)
{
  SVN_ERR_ASSERT(edit_path);

  if (tgt_kind == svn_node_dir)
    return c->editor->absent_directory(edit_path, dir_baton, pool);
  else
    return c->editor->absent_file(edit_path, dir_baton, pool);
}
