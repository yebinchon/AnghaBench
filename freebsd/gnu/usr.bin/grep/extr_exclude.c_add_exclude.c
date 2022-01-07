
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exclude {int exclude_alloc; int exclude_count; char const** exclude; } ;


 scalar_t__ xrealloc (char const**,int) ;

void
add_exclude (struct exclude *ex, char const *pattern)
{
  if (ex->exclude_alloc <= ex->exclude_count)
    ex->exclude = (char const **) xrealloc (ex->exclude,
         ((ex->exclude_alloc *= 2)
          * sizeof (char *)));

  ex->exclude[ex->exclude_count++] = pattern;
}
