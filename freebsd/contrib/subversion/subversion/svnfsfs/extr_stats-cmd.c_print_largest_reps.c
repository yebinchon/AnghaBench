
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t count; TYPE_2__** changes; } ;
typedef TYPE_3__ svn_fs_fs__largest_changes_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {scalar_t__ size; TYPE_1__* path; int revision; } ;
struct TYPE_5__ {int data; } ;


 char* _ (char*) ;
 int printf (char*,char*,int ,int ) ;
 char* svn__ui64toa_sep (scalar_t__,char,int *) ;

__attribute__((used)) static void
print_largest_reps(svn_fs_fs__largest_changes_t *changes,
                   apr_pool_t *pool)
{
  apr_size_t i;
  for (i = 0; i < changes->count && changes->changes[i]->size; ++i)
    printf(_("%12s r%-8ld %s\n"),
           svn__ui64toa_sep(changes->changes[i]->size, ',', pool),
           changes->changes[i]->revision,
           changes->changes[i]->path->data);
}
