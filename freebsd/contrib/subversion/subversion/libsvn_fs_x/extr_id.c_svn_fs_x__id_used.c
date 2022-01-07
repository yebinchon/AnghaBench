
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;
typedef int svn_boolean_t ;


 scalar_t__ SVN_FS_X__INVALID_CHANGE_SET ;

svn_boolean_t
svn_fs_x__id_used(const svn_fs_x__id_t *part)
{
  return part->change_set != SVN_FS_X__INVALID_CHANGE_SET;
}
