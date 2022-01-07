
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int (* delete_fs ) (char const*,int *) ;} ;
typedef TYPE_1__ fs_library_vtable_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int fs_library_vtable (TYPE_1__**,char const*,int *) ;
 int stub1 (char const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_delete_fs(const char *path, apr_pool_t *pool)
{
  fs_library_vtable_t *vtable;

  SVN_ERR(fs_library_vtable(&vtable, path, pool));
  return svn_error_trace(vtable->delete_fs(path, pool));
}
