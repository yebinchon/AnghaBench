
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* node_created_path ) (char const**,TYPE_2__*,char const*,int *) ;} ;


 int stub1 (char const**,TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_node_created_path(const char **created_path, svn_fs_root_t *root,
                         const char *path, apr_pool_t *pool)
{
  return svn_error_trace(root->vtable->node_created_path(created_path, root,
                                                         path, pool));
}
