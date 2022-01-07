
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * groups_byname ;
 int match_pattern_list (int ,char const*,int ) ;
 int ngroups ;

int
ga_match_pattern_list(const char *group_pattern)
{
 int i, found = 0;

 for (i = 0; i < ngroups; i++) {
  switch (match_pattern_list(groups_byname[i], group_pattern, 0)) {
  case -1:
   return 0;
  case 0:
   continue;
  case 1:
   found = 1;
  }
 }
 return found;
}
