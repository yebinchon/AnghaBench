
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ revision; scalar_t__ number; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;



int
svn_fs_fs__id_part_compare(const svn_fs_fs__id_part_t *a,
                           const svn_fs_fs__id_part_t *b)
{
  if (a->revision < b->revision)
    return -1;
  if (a->revision > b->revision)
    return 1;

  return a->number < b->number ? -1 : a->number == b->number ? 0 : 1;
}
