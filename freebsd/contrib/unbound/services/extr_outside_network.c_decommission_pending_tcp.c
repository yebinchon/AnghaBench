
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pending_tcp {int * query; struct pending_tcp* next_free; TYPE_1__* c; } ;
struct outside_network {struct pending_tcp* tcp_free; } ;
struct TYPE_2__ {int * ssl; } ;


 int SSL_free (int *) ;
 int SSL_shutdown (int *) ;
 int comm_point_close (TYPE_1__*) ;
 int use_free_buffer (struct outside_network*) ;
 int waiting_tcp_delete (int *) ;

__attribute__((used)) static void
decommission_pending_tcp(struct outside_network* outnet,
 struct pending_tcp* pend)
{
 if(pend->c->ssl) {





 }
 comm_point_close(pend->c);
 pend->next_free = outnet->tcp_free;
 outnet->tcp_free = pend;
 waiting_tcp_delete(pend->query);
 pend->query = ((void*)0);
 use_free_buffer(outnet);
}
