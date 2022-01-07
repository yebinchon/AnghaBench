
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct listen_list {TYPE_1__* com; struct listen_list* next; } ;
struct listen_dnsport {struct listen_list* cps; } ;
struct TYPE_2__ {scalar_t__ type; int * tcp_free; } ;


 int comm_point_stop_listening (TYPE_1__*) ;
 scalar_t__ comm_tcp_accept ;

void listen_stop_accept(struct listen_dnsport* listen)
{


 struct listen_list* p;
 for(p=listen->cps; p; p=p->next) {
  if(p->com->type == comm_tcp_accept &&
   p->com->tcp_free != ((void*)0)) {
   comm_point_stop_listening(p->com);
  }
 }
}
