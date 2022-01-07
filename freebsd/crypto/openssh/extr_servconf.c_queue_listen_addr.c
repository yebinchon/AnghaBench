
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct queued_listenaddr {int port; int * rdomain; int * addr; } ;
struct TYPE_3__ {scalar_t__ num_queued_listens; struct queued_listenaddr* queued_listen_addrs; } ;
typedef TYPE_1__ ServerOptions ;


 struct queued_listenaddr* xrecallocarray (struct queued_listenaddr*,scalar_t__,scalar_t__,int) ;
 int * xstrdup (char const*) ;

__attribute__((used)) static void
queue_listen_addr(ServerOptions *options, const char *addr,
    const char *rdomain, int port)
{
 struct queued_listenaddr *qla;

 options->queued_listen_addrs = xrecallocarray(
     options->queued_listen_addrs,
     options->num_queued_listens, options->num_queued_listens + 1,
     sizeof(*options->queued_listen_addrs));
 qla = &options->queued_listen_addrs[options->num_queued_listens++];
 qla->addr = xstrdup(addr);
 qla->port = port;
 qla->rdomain = rdomain == ((void*)0) ? ((void*)0) : xstrdup(rdomain);
}
