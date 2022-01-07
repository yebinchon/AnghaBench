
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ item_count; TYPE_1__* items; } ;
typedef TYPE_2__ svn_fs_x__p2l_entry_t ;
struct TYPE_5__ {scalar_t__ change_set; scalar_t__ number; } ;


 int assert (int) ;

__attribute__((used)) static int
compare_p2l_info(const svn_fs_x__p2l_entry_t * const * lhs,
                 const svn_fs_x__p2l_entry_t * const * rhs)
{
  assert(*lhs != *rhs);
  if ((*lhs)->item_count == 0)
    return (*lhs)->item_count == 0 ? 0 : -1;
  if ((*lhs)->item_count == 0)
    return 1;

  if ((*lhs)->items[0].change_set == (*rhs)->items[0].change_set)
    return (*lhs)->items[0].number > (*rhs)->items[0].number ? -1 : 1;

  return (*lhs)->items[0].change_set > (*rhs)->items[0].change_set ? -1 : 1;
}
