
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int min_unpacked_rev; int max_files_per_dir; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_7__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_8__ {int min_unpacked_rev; int shard_size; int fs_type; } ;
typedef TYPE_3__ svn_fs_fsx_info_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_FS_TYPE_FSX ;
 int * SVN_NO_ERROR ;
 TYPE_3__* apr_palloc (int *,int) ;

__attribute__((used)) static svn_error_t *
x_info(const void **fsx_info,
       svn_fs_t *fs,
       apr_pool_t *result_pool,
       apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_fs_fsx_info_t *info = apr_palloc(result_pool, sizeof(*info));
  info->fs_type = SVN_FS_TYPE_FSX;
  info->shard_size = ffd->max_files_per_dir;
  info->min_unpacked_rev = ffd->min_unpacked_rev;
  *fsx_info = info;
  return SVN_NO_ERROR;
}
