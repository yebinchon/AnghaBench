
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _s_x {int x; int * s; } ;


 int strlen (char const*) ;
 scalar_t__ strncmp (int *,char const*,int) ;

int
match_token_relaxed(struct _s_x *table, const char *string)
{
 struct _s_x *pt, *m;
 int i, c;

 i = strlen(string);
 c = 0;

 for (pt = table ; i != 0 && pt->s != ((void*)0) ; pt++) {
  if (strncmp(pt->s, string, i) != 0)
   continue;
  m = pt;
  c++;
 }

 if (c == 1)
  return (m->x);

 return (c > 0 ? -2: -1);
}
