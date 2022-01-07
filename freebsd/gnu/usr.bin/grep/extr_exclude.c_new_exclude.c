
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exclude {int exclude_alloc; char const** exclude; scalar_t__ exclude_count; } ;


 scalar_t__ xmalloc (int) ;

struct exclude *
new_exclude (void)
{
  struct exclude *ex = (struct exclude *) xmalloc (sizeof (struct exclude));
  ex->exclude_count = 0;
  ex->exclude_alloc = 64;
  ex->exclude = (char const **) xmalloc (ex->exclude_alloc * sizeof (char *));
  return ex;
}
