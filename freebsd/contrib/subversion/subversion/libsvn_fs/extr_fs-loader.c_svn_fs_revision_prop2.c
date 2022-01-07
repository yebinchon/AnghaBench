
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* revision_prop ) (int **,TYPE_2__*,int ,char const*,int ,int *,int *) ;} ;


 int stub1 (int **,TYPE_2__*,int ,char const*,int ,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_revision_prop2(svn_string_t **value_p,
                      svn_fs_t *fs,
                      svn_revnum_t rev,
                      const char *propname,
                      svn_boolean_t refresh,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  return svn_error_trace(fs->vtable->revision_prop(value_p, fs, rev,
                                                   propname, refresh,
                                                   result_pool,
                                                   scratch_pool));
}
