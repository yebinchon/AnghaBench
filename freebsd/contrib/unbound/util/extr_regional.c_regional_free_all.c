
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {char* next; char* large_list; } ;


 int free (char*) ;
 int regional_init (struct regional*) ;

void
regional_free_all(struct regional *r)
{
 char* p = r->next, *np;
 while(p) {
  np = *(char**)p;
  free(p);
  p = np;
 }
 p = r->large_list;
 while(p) {
  np = *(char**)p;
  free(p);
  p = np;
 }
 regional_init(r);
}
