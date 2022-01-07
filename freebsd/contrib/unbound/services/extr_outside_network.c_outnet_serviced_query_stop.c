
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serviced_query {TYPE_1__* outnet; int to_be_deleted; int cblist; } ;
struct TYPE_2__ {int serviced; } ;


 int callback_list_remove (struct serviced_query*,void*) ;
 int rbtree_delete (int ,struct serviced_query*) ;
 int serviced_delete (struct serviced_query*) ;

void outnet_serviced_query_stop(struct serviced_query* sq, void* cb_arg)
{
 if(!sq)
  return;
 callback_list_remove(sq, cb_arg);

 if(!sq->cblist && !sq->to_be_deleted) {
  (void)rbtree_delete(sq->outnet->serviced, sq);
  serviced_delete(sq);
 }
}
