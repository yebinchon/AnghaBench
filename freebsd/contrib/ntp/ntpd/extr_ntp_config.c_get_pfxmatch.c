
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
struct masks {int mask; int * name; } ;


 int strlen (int *) ;
 scalar_t__ strncmp (char const*,int *,int ) ;

__attribute__((used)) static u_int32
get_pfxmatch(
 const char ** pstr,
 struct masks * m
 )
{
 while (m->name != ((void*)0)) {
  if (strncmp(*pstr, m->name, strlen(m->name)) == 0) {
   *pstr += strlen(m->name);
   return m->mask;
  } else {
   m++;
  }
 }
 return 0;
}
