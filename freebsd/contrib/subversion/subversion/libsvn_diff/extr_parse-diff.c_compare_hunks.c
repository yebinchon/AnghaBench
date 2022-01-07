
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ original_start; } ;
typedef TYPE_1__ svn_diff_hunk_t ;



__attribute__((used)) static int
compare_hunks(const void *a, const void *b)
{
  const svn_diff_hunk_t *ha = *((const svn_diff_hunk_t *const *)a);
  const svn_diff_hunk_t *hb = *((const svn_diff_hunk_t *const *)b);

  if (ha->original_start < hb->original_start)
    return -1;
  if (ha->original_start > hb->original_start)
    return 1;
  return 0;
}
