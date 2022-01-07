
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {scalar_t__ use_block_read; } ;
typedef TYPE_2__ fs_fs_data_t ;


 scalar_t__ svn_fs_fs__use_log_addressing (TYPE_1__*) ;

__attribute__((used)) static svn_boolean_t
use_block_read(svn_fs_t *fs)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  return svn_fs_fs__use_log_addressing(fs) && ffd->use_block_read;
}
