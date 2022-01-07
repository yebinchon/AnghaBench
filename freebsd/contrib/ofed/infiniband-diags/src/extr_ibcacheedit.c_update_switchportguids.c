
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int guid; } ;
typedef TYPE_1__ ibnd_port_t ;
struct TYPE_5__ {int numports; int guid; TYPE_1__** ports; } ;
typedef TYPE_2__ ibnd_node_t ;



__attribute__((used)) static void update_switchportguids(ibnd_node_t *node)
{
 ibnd_port_t *port;
 int p;

 for (p = 0; p <= node->numports; p++) {
  port = node->ports[p];
  if (port)
   port->guid = node->guid;
 }
}
