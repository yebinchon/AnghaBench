
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ revision; scalar_t__ number; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;
typedef int svn_boolean_t ;



svn_boolean_t
svn_fs_fs__id_part_is_root(const svn_fs_fs__id_part_t* part)
{
  return part->revision == 0 && part->number == 0;
}
