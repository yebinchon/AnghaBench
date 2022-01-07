
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edns_option {int opt_len; struct edns_option* next; struct edns_option* opt_data; } ;


 int edns_opt_list_free (struct edns_option*) ;
 int free (struct edns_option*) ;
 void* memdup (struct edns_option*,int) ;

struct edns_option* edns_opt_copy_alloc(struct edns_option* list)
{
 struct edns_option* result = ((void*)0), *cur = ((void*)0), *s;
 while(list) {

  s = memdup(list, sizeof(*list));
  if(!s) {
   edns_opt_list_free(result);
   return ((void*)0);
  }
  s->next = ((void*)0);


  if(s->opt_data) {
   s->opt_data = memdup(s->opt_data, s->opt_len);
   if(!s->opt_data) {
    free(s);
    edns_opt_list_free(result);
    return ((void*)0);
   }
  }


  if(cur)
   cur->next = s;
  else result = s;
  cur = s;


  list = list->next;
 }
 return result;
}
