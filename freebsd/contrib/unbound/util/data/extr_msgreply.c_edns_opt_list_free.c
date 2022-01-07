
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edns_option {struct edns_option* next; struct edns_option* opt_data; } ;


 int free (struct edns_option*) ;

void edns_opt_list_free(struct edns_option* list)
{
 struct edns_option* n;
 while(list) {
  free(list->opt_data);
  n = list->next;
  free(list);
  list = n;
 }
}
