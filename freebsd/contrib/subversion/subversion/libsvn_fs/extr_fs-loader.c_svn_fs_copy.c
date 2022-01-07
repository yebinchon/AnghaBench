
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
struct TYPE_7__ {int (* copy ) (TYPE_2__*,char const*,TYPE_2__*,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int stub1 (TYPE_2__*,char const*,TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_fs__path_valid (char const*,int *) ;

svn_error_t *
svn_fs_copy(svn_fs_root_t *from_root, const char *from_path,
            svn_fs_root_t *to_root, const char *to_path, apr_pool_t *pool)
{
  SVN_ERR(svn_fs__path_valid(to_path, pool));
  return svn_error_trace(to_root->vtable->copy(from_root, from_path,
                                               to_root, to_path, pool));
}
