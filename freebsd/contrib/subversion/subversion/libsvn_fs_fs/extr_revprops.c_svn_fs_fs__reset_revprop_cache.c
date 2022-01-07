
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_5__ {scalar_t__ revprop_prefix; } ;
typedef TYPE_2__ fs_fs_data_t ;



void
svn_fs_fs__reset_revprop_cache(svn_fs_t *fs)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  ffd->revprop_prefix = 0;
}
