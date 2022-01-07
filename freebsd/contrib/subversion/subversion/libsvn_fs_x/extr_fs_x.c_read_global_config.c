
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flush_to_disk; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_5__ {int config; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;


 int FALSE ;
 int SVN_FS_CONFIG_NO_FLUSH_TO_DISK ;
 int * SVN_NO_ERROR ;
 int svn_hash__get_bool (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
read_global_config(svn_fs_t *fs)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;

  ffd->flush_to_disk = !svn_hash__get_bool(fs->config,
                                           SVN_FS_CONFIG_NO_FLUSH_TO_DISK,
                                           FALSE);

  return SVN_NO_ERROR;
}
