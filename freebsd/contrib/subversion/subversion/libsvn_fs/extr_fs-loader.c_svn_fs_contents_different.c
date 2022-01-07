
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int (* contents_changed ) (int *,TYPE_2__*,char const*,TYPE_2__*,char const*,int ,int *) ;} ;


 int TRUE ;
 int stub1 (int *,TYPE_2__*,char const*,TYPE_2__*,char const*,int ,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_contents_different(svn_boolean_t *changed_p, svn_fs_root_t *root1,
                          const char *path1, svn_fs_root_t *root2,
                          const char *path2, apr_pool_t *scratch_pool)
{
  return svn_error_trace(root1->vtable->contents_changed(changed_p,
                                                         root1, path1,
                                                         root2, path2,
                                                         TRUE,
                                                         scratch_pool));
}
