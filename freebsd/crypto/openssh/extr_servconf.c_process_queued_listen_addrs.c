
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct queued_listenaddr {struct queued_listenaddr* rdomain; struct queued_listenaddr* addr; int port; } ;
struct TYPE_4__ {scalar_t__ num_ports; int address_family; size_t num_queued_listens; struct queued_listenaddr* queued_listen_addrs; int * ports; } ;
typedef TYPE_1__ ServerOptions ;


 int AF_UNSPEC ;
 int SSH_DEFAULT_PORT ;
 int add_listen_addr (TYPE_1__*,struct queued_listenaddr*,struct queued_listenaddr*,int ) ;
 int free (struct queued_listenaddr*) ;

__attribute__((used)) static void
process_queued_listen_addrs(ServerOptions *options)
{
 u_int i;
 struct queued_listenaddr *qla;

 if (options->num_ports == 0)
  options->ports[options->num_ports++] = SSH_DEFAULT_PORT;
 if (options->address_family == -1)
  options->address_family = AF_UNSPEC;

 for (i = 0; i < options->num_queued_listens; i++) {
  qla = &options->queued_listen_addrs[i];
  add_listen_addr(options, qla->addr, qla->rdomain, qla->port);
  free(qla->addr);
  free(qla->rdomain);
 }
 free(options->queued_listen_addrs);
 options->queued_listen_addrs = ((void*)0);
 options->num_queued_listens = 0;
}
