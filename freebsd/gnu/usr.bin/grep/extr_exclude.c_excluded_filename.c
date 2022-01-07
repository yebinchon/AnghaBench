
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exclude {char** exclude; int exclude_count; } ;


 scalar_t__ fnmatch (char const* const,char const*,int) ;

int
excluded_filename (struct exclude const *ex, char const *f, int options)
{
  char const * const *exclude = ex->exclude;
  int exclude_count = ex->exclude_count;
  int i;

  for (i = 0; i < exclude_count; i++)
    if (fnmatch (exclude[i], f, options) == 0)
      return 1;

  return 0;
}
