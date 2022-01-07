
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dirent; } ;
typedef TYPE_2__ filtered_dirent_t ;
struct TYPE_3__ {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_filtered_dirent(const void *lhs,
                        const void *rhs)
{
  const filtered_dirent_t *lhs_dirent = (const filtered_dirent_t *)lhs;
  const filtered_dirent_t *rhs_dirent = (const filtered_dirent_t *)rhs;

  return strcmp(lhs_dirent->dirent->name, rhs_dirent->dirent->name);
}
