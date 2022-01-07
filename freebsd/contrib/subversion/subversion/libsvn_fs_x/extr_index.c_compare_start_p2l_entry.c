
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
typedef TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef scalar_t__ apr_off_t ;



__attribute__((used)) static int
compare_start_p2l_entry(const void *lhs,
                        const void *rhs)
{
  const svn_fs_x__p2l_entry_t *entry = lhs;
  apr_off_t start = *(const apr_off_t*)rhs;
  apr_off_t diff = entry->offset - start;


  return diff < 0 ? -1 : (diff == 0 ? 0 : 1);
}
