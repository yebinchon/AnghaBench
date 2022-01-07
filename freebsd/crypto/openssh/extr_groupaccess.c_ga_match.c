
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * groups_byname ;
 scalar_t__ match_pattern (int ,char* const) ;
 int ngroups ;

int
ga_match(char * const *groups, int n)
{
 int i, j;

 for (i = 0; i < ngroups; i++)
  for (j = 0; j < n; j++)
   if (match_pattern(groups_byname[i], groups[j]))
    return 1;
 return 0;
}
