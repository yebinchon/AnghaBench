
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ revision; } ;
struct TYPE_4__ {TYPE_1__ item; } ;
typedef TYPE_2__ svn_fs_fs__p2l_entry_t ;



__attribute__((used)) static int
compare_p2l_entry_revision(const void *lhs,
                           const void *rhs)
{
  const svn_fs_fs__p2l_entry_t *lhs_entry
    =*(const svn_fs_fs__p2l_entry_t **)lhs;
  const svn_fs_fs__p2l_entry_t *rhs_entry
    =*(const svn_fs_fs__p2l_entry_t **)rhs;

  if (lhs_entry->item.revision < rhs_entry->item.revision)
    return -1;

  return lhs_entry->item.revision == rhs_entry->item.revision ? 0 : 1;
}
