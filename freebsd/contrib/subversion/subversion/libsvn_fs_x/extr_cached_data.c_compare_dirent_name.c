
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ svn_fs_x__dirent_t ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static int
compare_dirent_name(const void *a,
                    const void *b)
{
  const svn_fs_x__dirent_t *lhs = *((const svn_fs_x__dirent_t * const *) a);
  const char *rhs = b;

  return strcmp(lhs->name, rhs);
}
