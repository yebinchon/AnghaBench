
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_tcp {int c; struct pending_tcp* next_free; } ;
struct outside_network {int num_tcp; struct pending_tcp** tcp_conns; int base; struct pending_tcp* tcp_free; } ;


 scalar_t__ calloc (int,int) ;
 int comm_point_create_tcp_out (int ,size_t,int ,struct pending_tcp*) ;
 int outnet_tcp_cb ;

__attribute__((used)) static int
create_pending_tcp(struct outside_network* outnet, size_t bufsize)
{
 size_t i;
 if(outnet->num_tcp == 0)
  return 1;
 if(!(outnet->tcp_conns = (struct pending_tcp **)calloc(
   outnet->num_tcp, sizeof(struct pending_tcp*))))
  return 0;
 for(i=0; i<outnet->num_tcp; i++) {
  if(!(outnet->tcp_conns[i] = (struct pending_tcp*)calloc(1,
   sizeof(struct pending_tcp))))
   return 0;
  outnet->tcp_conns[i]->next_free = outnet->tcp_free;
  outnet->tcp_free = outnet->tcp_conns[i];
  outnet->tcp_conns[i]->c = comm_point_create_tcp_out(
   outnet->base, bufsize, outnet_tcp_cb,
   outnet->tcp_conns[i]);
  if(!outnet->tcp_conns[i]->c)
   return 0;
 }
 return 1;
}
