
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ number; int change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;


 int SVN_FS_X__INVALID_CHANGE_SET ;

void
svn_fs_x__id_reset(svn_fs_x__id_t *part)
{
  part->change_set = SVN_FS_X__INVALID_CHANGE_SET;
  part->number = 0;
}
