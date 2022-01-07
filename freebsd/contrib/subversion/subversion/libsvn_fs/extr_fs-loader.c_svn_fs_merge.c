
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int (* merge ) (char const**,TYPE_2__*,char const*,TYPE_2__*,char const*,TYPE_2__*,char const*,int *) ;} ;


 int stub1 (char const**,TYPE_2__*,char const*,TYPE_2__*,char const*,TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_merge(const char **conflict_p, svn_fs_root_t *source_root,
             const char *source_path, svn_fs_root_t *target_root,
             const char *target_path, svn_fs_root_t *ancestor_root,
             const char *ancestor_path, apr_pool_t *pool)
{
  return svn_error_trace(target_root->vtable->merge(conflict_p,
                                                    source_root, source_path,
                                                    target_root, target_path,
                                                    ancestor_root,
                                                    ancestor_path, pool));
}
