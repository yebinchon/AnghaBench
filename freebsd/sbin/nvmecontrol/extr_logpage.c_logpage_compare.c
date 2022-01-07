
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logpage_function {scalar_t__ log_page; int * vendor; } ;


 int strcmp (int *,int *) ;

__attribute__((used)) static int
logpage_compare(struct logpage_function *a, struct logpage_function *b)
{
 int c;

 if ((a->vendor == ((void*)0)) != (b->vendor == ((void*)0)))
  return (a->vendor == ((void*)0) ? -1 : 1);
 if (a->vendor != ((void*)0)) {
  c = strcmp(a->vendor, b->vendor);
  if (c != 0)
   return (c);
 }
 return ((int)a->log_page - (int)b->log_page);
}
