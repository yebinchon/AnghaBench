
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ value; } ;
typedef TYPE_1__ svn_sort__item_t ;
struct TYPE_8__ {scalar_t__ revision; scalar_t__ number; } ;
typedef TYPE_2__ svn_fs_fs__id_part_t ;
struct TYPE_9__ {int id; } ;
typedef TYPE_3__ svn_fs_dirent_t ;


 TYPE_2__* svn_fs_fs__id_rev_item (int ) ;

__attribute__((used)) static int
compare_dir_entries_format6(const svn_sort__item_t *a,
                            const svn_sort__item_t *b)
{
  const svn_fs_dirent_t *lhs = (const svn_fs_dirent_t *) a->value;
  const svn_fs_dirent_t *rhs = (const svn_fs_dirent_t *) b->value;

  const svn_fs_fs__id_part_t *lhs_rev_item
    = svn_fs_fs__id_rev_item(lhs->id);
  const svn_fs_fs__id_part_t *rhs_rev_item
    = svn_fs_fs__id_rev_item(rhs->id);


  if (lhs_rev_item->revision != rhs_rev_item->revision)
    return lhs_rev_item->revision > rhs_rev_item->revision ? -1 : 1;


  if (lhs_rev_item->number != rhs_rev_item->number)
    return lhs_rev_item->number > rhs_rev_item->number ? 1 : -1;

  return 0;
}
