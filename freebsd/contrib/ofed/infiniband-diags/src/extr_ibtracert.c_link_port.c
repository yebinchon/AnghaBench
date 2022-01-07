
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ports; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ Port ;
typedef TYPE_2__ Node ;



__attribute__((used)) static void link_port(Port * port, Node * node)
{
 port->next = node->ports;
 node->ports = port;
}
