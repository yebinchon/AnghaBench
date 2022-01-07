
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ method_pending; } ;


 scalar_t__ METHOD_PENDING_WAIT ;

int eap_sm_method_pending(struct eap_sm *sm)
{
 if (sm == ((void*)0))
  return 0;
 return sm->method_pending == METHOD_PENDING_WAIT;
}
