
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int (* closest_copy ) (TYPE_2__**,char const**,TYPE_2__*,char const*,int *) ;} ;


 int stub1 (TYPE_2__**,char const**,TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_closest_copy(svn_fs_root_t **root_p, const char **path_p,
                    svn_fs_root_t *root, const char *path, apr_pool_t *pool)
{
  return svn_error_trace(root->vtable->closest_copy(root_p, path_p,
                                                    root, path, pool));
}
