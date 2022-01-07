
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ svn_fs_dirent_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_dirents(const void *a, const void *b)
{
  const svn_fs_dirent_t *lhs = *((const svn_fs_dirent_t * const *) a);
  const svn_fs_dirent_t *rhs = *((const svn_fs_dirent_t * const *) b);

  return strcmp(lhs->name, rhs->name);
}
