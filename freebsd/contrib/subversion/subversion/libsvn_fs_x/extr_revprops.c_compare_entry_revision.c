
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_2__ {scalar_t__ const start_rev; } ;
typedef TYPE_1__ manifest_entry_t ;



__attribute__((used)) static int
compare_entry_revision(const void *lhs,
                       const void *rhs)
{
  const manifest_entry_t *entry = lhs;
  const svn_revnum_t *revision = rhs;

  if (entry->start_rev < *revision)
    return -1;

  return entry->start_rev == *revision ? 0 : 1;
}
