
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* htnext; } ;
typedef TYPE_1__ ibnd_port_t ;
typedef int (* ibnd_iter_port_func_t ) (TYPE_1__*,void*) ;
struct TYPE_7__ {TYPE_1__** portstbl; } ;
typedef TYPE_3__ ibnd_fabric_t ;


 int HTSZ ;
 int IBND_DEBUG (char*) ;

void ibnd_iter_ports(ibnd_fabric_t * fabric, ibnd_iter_port_func_t func,
   void *user_data)
{
 int i = 0;
 ibnd_port_t *cur = ((void*)0);

 if (!fabric) {
  IBND_DEBUG("fabric parameter NULL\n");
  return;
 }

 if (!func) {
  IBND_DEBUG("func parameter NULL\n");
  return;
 }

 for (i = 0; i<HTSZ; i++)
  for (cur = fabric->portstbl[i]; cur; cur = cur->htnext)
   func(cur, user_data);
}
