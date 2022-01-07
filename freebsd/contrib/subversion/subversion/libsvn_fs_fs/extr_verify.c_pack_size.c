
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_5__ {scalar_t__ min_unpacked_rev; scalar_t__ max_files_per_dir; } ;
typedef TYPE_2__ fs_fs_data_t ;



__attribute__((used)) static svn_revnum_t
pack_size(svn_fs_t *fs, svn_revnum_t rev)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  return rev < ffd->min_unpacked_rev ? ffd->max_files_per_dir : 1;
}
