
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {struct inplace_cb** inplace_cb_lists; } ;
struct inplace_cb {int id; struct inplace_cb* next; } ;
typedef enum inplace_cb_list_type { ____Placeholder_inplace_cb_list_type } inplace_cb_list_type ;


 int free (struct inplace_cb*) ;

void
inplace_cb_delete(struct module_env* env, enum inplace_cb_list_type type,
 int id)
{
 struct inplace_cb* temp = env->inplace_cb_lists[type];
 struct inplace_cb* prev = ((void*)0);

 while(temp) {
  if(temp->id == id) {
   if(!prev) {
    env->inplace_cb_lists[type] = temp->next;
    free(temp);
    temp = env->inplace_cb_lists[type];
   }
   else {
    prev->next = temp->next;
    free(temp);
    temp = prev->next;
   }
  }
  else {
   prev = temp;
   temp = temp->next;
  }
 }
}
