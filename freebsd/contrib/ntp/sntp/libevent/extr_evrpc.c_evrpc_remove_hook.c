
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_hook_list {int dummy; } ;
struct evrpc_hooks_ {struct evrpc_hook_list out_hooks; struct evrpc_hook_list in_hooks; } ;
typedef enum EVRPC_HOOK_TYPE { ____Placeholder_EVRPC_HOOK_TYPE } EVRPC_HOOK_TYPE ;




 int EVUTIL_ASSERT (int) ;
 int evrpc_remove_hook_internal (struct evrpc_hook_list*,void*) ;

int
evrpc_remove_hook(void *vbase, enum EVRPC_HOOK_TYPE hook_type, void *handle)
{
 struct evrpc_hooks_ *base = vbase;
 struct evrpc_hook_list *head = ((void*)0);
 switch (hook_type) {
 case 129:
  head = &base->in_hooks;
  break;
 case 128:
  head = &base->out_hooks;
  break;
 default:
  EVUTIL_ASSERT(hook_type == 129 || hook_type == 128);
 }

 return (evrpc_remove_hook_internal(head, handle));
}
