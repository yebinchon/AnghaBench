
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* change_node_prop ) (TYPE_2__*,char const*,char const*,int const*,int *) ;} ;


 int stub1 (TYPE_2__*,char const*,char const*,int const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_change_node_prop(svn_fs_root_t *root, const char *path,
                        const char *name, const svn_string_t *value,
                        apr_pool_t *pool)
{
  return svn_error_trace(root->vtable->change_node_prop(root, path, name,
                                                        value, pool));
}
