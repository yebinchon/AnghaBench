
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int end; scalar_t__ inheritable; } ;
typedef TYPE_1__ svn_merge_range_t ;
typedef int apr_pool_t ;


 char* SVN_MERGEINFO_NONINHERITABLE_STR ;
 char* apr_psprintf (int *,char*,int,...) ;

__attribute__((used)) static char *
range_to_string(const svn_merge_range_t *range,
                apr_pool_t *pool)
{
  const char *mark
    = range->inheritable ? "" : SVN_MERGEINFO_NONINHERITABLE_STR;

  if (range->start == range->end - 1)
    return apr_psprintf(pool, "%ld%s", range->end, mark);
  else if (range->start - 1 == range->end)
    return apr_psprintf(pool, "-%ld%s", range->start, mark);
  else if (range->start < range->end)
    return apr_psprintf(pool, "%ld-%ld%s", range->start + 1, range->end, mark);
  else
    return apr_psprintf(pool, "%ld-%ld%s", range->start, range->end + 1, mark);
}
