
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct _s_x {char const* s; int x; } ;


 int bcmp (char const*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int
match_token(struct _s_x *table, const char *string)
{
 struct _s_x *pt;
 uint i = strlen(string);

 for (pt = table ; i && pt->s != ((void*)0) ; pt++)
  if (strlen(pt->s) == i && !bcmp(string, pt->s, i))
   return pt->x;
 return (-1);
}
