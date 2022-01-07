
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
struct TYPE_5__ {int (* make_file ) (TYPE_2__*,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int stub1 (TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_fs__path_valid (char const*,int *) ;

svn_error_t *
svn_fs_make_file(svn_fs_root_t *root, const char *path, apr_pool_t *pool)
{
  SVN_ERR(svn_fs__path_valid(path, pool));
  return svn_error_trace(root->vtable->make_file(root, path, pool));
}
