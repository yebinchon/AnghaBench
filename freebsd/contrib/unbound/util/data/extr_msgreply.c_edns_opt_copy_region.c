
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct edns_option {int opt_len; struct edns_option* next; struct edns_option* opt_data; } ;


 void* regional_alloc_init (struct regional*,struct edns_option*,int) ;

struct edns_option* edns_opt_copy_region(struct edns_option* list,
        struct regional* region)
{
 struct edns_option* result = ((void*)0), *cur = ((void*)0), *s;
 while(list) {

  s = regional_alloc_init(region, list, sizeof(*list));
  if(!s) return ((void*)0);
  s->next = ((void*)0);


  if(s->opt_data) {
   s->opt_data = regional_alloc_init(region, s->opt_data,
    s->opt_len);
   if(!s->opt_data)
    return ((void*)0);
  }


  if(cur)
   cur->next = s;
  else result = s;
  cur = s;


  list = list->next;
 }
 return result;
}
