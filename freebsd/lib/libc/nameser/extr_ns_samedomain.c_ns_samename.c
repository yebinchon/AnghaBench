
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NS_MAXDNAME ;
 scalar_t__ ns_makecanon (char const*,char*,int) ;
 scalar_t__ strcasecmp (char*,char*) ;

int
ns_samename(const char *a, const char *b) {
 char ta[NS_MAXDNAME], tb[NS_MAXDNAME];

 if (ns_makecanon(a, ta, sizeof ta) < 0 ||
     ns_makecanon(b, tb, sizeof tb) < 0)
  return (-1);
 if (strcasecmp(ta, tb) == 0)
  return (1);
 else
  return (0);
}
