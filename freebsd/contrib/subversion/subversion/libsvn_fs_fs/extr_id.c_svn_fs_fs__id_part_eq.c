
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ revision; scalar_t__ number; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;
typedef int svn_boolean_t ;



svn_boolean_t
svn_fs_fs__id_part_eq(const svn_fs_fs__id_part_t *lhs,
                      const svn_fs_fs__id_part_t *rhs)
{
  return lhs->revision == rhs->revision && lhs->number == rhs->number;
}
