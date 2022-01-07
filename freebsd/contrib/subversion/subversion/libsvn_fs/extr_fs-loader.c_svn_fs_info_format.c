
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_version_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* info_format ) (int*,int **,TYPE_2__*,int *,int *) ;} ;


 int stub1 (int*,int **,TYPE_2__*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_info_format(int *fs_format,
                   svn_version_t **supports_version,
                   svn_fs_t *fs,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  return svn_error_trace(fs->vtable->info_format(fs_format, supports_version,
                                                 fs,
                                                 result_pool, scratch_pool));
}
