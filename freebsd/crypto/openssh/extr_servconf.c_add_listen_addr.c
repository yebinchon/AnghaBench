
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {size_t num_ports; int* ports; } ;
typedef TYPE_1__ ServerOptions ;


 int add_one_listen_addr (TYPE_1__*,char const*,char const*,int) ;

__attribute__((used)) static void
add_listen_addr(ServerOptions *options, const char *addr,
    const char *rdomain, int port)
{
 u_int i;

 if (port > 0)
  add_one_listen_addr(options, addr, rdomain, port);
 else {
  for (i = 0; i < options->num_ports; i++) {
   add_one_listen_addr(options, addr, rdomain,
       options->ports[i]);
  }
 }
}
