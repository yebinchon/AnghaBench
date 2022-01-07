
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_7__ {int log_addressing; int min_unpacked_rev; int shard_size; int fs_type; } ;
typedef TYPE_2__ svn_fs_fsfs_info_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int use_log_addressing; int min_unpacked_rev; int max_files_per_dir; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_FS_TYPE_FSFS ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_palloc (int *,int) ;

__attribute__((used)) static svn_error_t *
fs_info(const void **fsfs_info,
        svn_fs_t *fs,
        apr_pool_t *result_pool,
        apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_fs_fsfs_info_t *info = apr_palloc(result_pool, sizeof(*info));
  info->fs_type = SVN_FS_TYPE_FSFS;
  info->shard_size = ffd->max_files_per_dir;
  info->min_unpacked_rev = ffd->min_unpacked_rev;
  info->log_addressing = ffd->use_log_addressing;
  *fsfs_info = info;
  return SVN_NO_ERROR;
}
