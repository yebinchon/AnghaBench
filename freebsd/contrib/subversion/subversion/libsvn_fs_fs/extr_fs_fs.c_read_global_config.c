
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int config; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int flush_to_disk; int block_size; scalar_t__ use_block_read; } ;
typedef TYPE_2__ fs_fs_data_t ;


 int FALSE ;
 int MIN (int,int ) ;
 int SVN_FS_CONFIG_FSFS_BLOCK_READ ;
 int SVN_FS_CONFIG_NO_FLUSH_TO_DISK ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn_hash__get_bool (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
read_global_config(svn_fs_t *fs)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  ffd->use_block_read = svn_hash__get_bool(fs->config,
                                           SVN_FS_CONFIG_FSFS_BLOCK_READ,
                                           FALSE);
  ffd->flush_to_disk = !svn_hash__get_bool(fs->config,
                                           SVN_FS_CONFIG_NO_FLUSH_TO_DISK,
                                           FALSE);




  if (!ffd->use_block_read)
    ffd->block_size = MIN(0x1000, ffd->block_size);

  return SVN_NO_ERROR;
}
