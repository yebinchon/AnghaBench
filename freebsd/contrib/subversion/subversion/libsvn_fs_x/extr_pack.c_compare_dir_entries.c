
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ value; } ;
typedef TYPE_1__ svn_sort__item_t ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ svn_fs_dirent_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_dir_entries(const svn_sort__item_t *a,
                    const svn_sort__item_t *b)
{
  const svn_fs_dirent_t *lhs = (const svn_fs_dirent_t *) a->value;
  const svn_fs_dirent_t *rhs = (const svn_fs_dirent_t *) b->value;

  return strcmp(lhs->name, rhs->name);
}
