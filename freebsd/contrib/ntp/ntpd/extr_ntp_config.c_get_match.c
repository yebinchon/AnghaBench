
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
struct masks {int mask; int * name; } ;


 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static u_int32
get_match(
 const char * str,
 struct masks * m
 )
{
 while (m->name != ((void*)0)) {
  if (strcmp(str, m->name) == 0)
   return m->mask;
  else
   m++;
 }
 return 0;
}
