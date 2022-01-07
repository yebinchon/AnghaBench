
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int max_files_per_dir; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;


 scalar_t__ svn_fs_x__is_packed_rev (TYPE_2__*,int) ;

__attribute__((used)) static svn_revnum_t
base_revision(svn_fs_t *fs,
              svn_revnum_t revision)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  return svn_fs_x__is_packed_rev(fs, revision)
       ? revision - (revision % ffd->max_files_per_dir)
       : revision;
}
