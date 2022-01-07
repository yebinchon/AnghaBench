
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ revision; scalar_t__ number; } ;
struct TYPE_6__ {TYPE_1__ item; } ;
typedef TYPE_2__ svn_fs_fs__p2l_entry_t ;


 int assert (int) ;

__attribute__((used)) static int
compare_p2l_info(const svn_fs_fs__p2l_entry_t * const * lhs,
                 const svn_fs_fs__p2l_entry_t * const * rhs)
{
  assert(*lhs != *rhs);

  if ((*lhs)->item.revision == (*rhs)->item.revision)
    return (*lhs)->item.number > (*rhs)->item.number ? -1 : 1;

  return (*lhs)->item.revision > (*rhs)->item.revision ? -1 : 1;
}
