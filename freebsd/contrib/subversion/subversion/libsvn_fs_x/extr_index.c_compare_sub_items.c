
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ change_set; } ;
typedef TYPE_1__ svn_fs_x__id_t ;



__attribute__((used)) static int
compare_sub_items(const svn_fs_x__id_t * const * lhs,
                  const svn_fs_x__id_t * const * rhs)
{
  return (*lhs)->change_set < (*rhs)->change_set
       ? 1
       : ((*lhs)->change_set > (*rhs)->change_set ? -1 : 0);
}
