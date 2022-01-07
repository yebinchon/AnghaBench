
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edns_option {struct edns_option* next; } ;


 int edns_opt_compare (struct edns_option*,struct edns_option*) ;

int edns_opt_list_compare(struct edns_option* p, struct edns_option* q)
{
 int r;
 while(p && q) {
  r = edns_opt_compare(p, q);
  if(r != 0)
   return r;
  p = p->next;
  q = q->next;
 }
 if(p || q) {

  if(p) return 1;
  if(q) return -1;
 }
 return 0;
}
