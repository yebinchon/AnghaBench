
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct packet {int client_addr; TYPE_4__* interface; TYPE_1__* raw; } ;
struct iaddrlist {int addr; struct iaddrlist* next; } ;
struct TYPE_8__ {TYPE_3__* client; } ;
struct TYPE_7__ {TYPE_2__* config; } ;
struct TYPE_6__ {struct iaddrlist* reject_list; } ;
struct TYPE_5__ {scalar_t__ op; } ;


 scalar_t__ BOOTREPLY ;
 scalar_t__ addr_eq (int ,int ) ;
 int dhcpoffer (struct packet*) ;
 int note (char*,int ) ;
 int piaddr (int ) ;

void
bootp(struct packet *packet)
{
 struct iaddrlist *ap;

 if (packet->raw->op != BOOTREPLY)
  return;



 for (ap = packet->interface->client->config->reject_list;
     ap; ap = ap->next) {
  if (addr_eq(packet->client_addr, ap->addr)) {
   note("BOOTREPLY from %s rejected.", piaddr(ap->addr));
   return;
  }
 }
 dhcpoffer(packet);
}
