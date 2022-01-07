
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct packet {TYPE_3__* options; TYPE_2__* raw; int client_addr; struct interface_info* interface; } ;
struct TYPE_8__ {scalar_t__ hlen; int haddr; } ;
struct interface_info {TYPE_7__* client; TYPE_1__ hw_address; } ;
struct TYPE_12__ {int len; int iabuf; } ;
struct client_lease {int is_bootp; struct client_lease* next; TYPE_5__ address; int medium; } ;
struct TYPE_13__ {scalar_t__ len; int * iabuf; } ;
struct TYPE_14__ {scalar_t__ state; scalar_t__ xid; int first_sending; struct client_lease* offered_leases; TYPE_6__ requested_address; TYPE_4__* config; int medium; } ;
struct TYPE_11__ {int* required_options; int select_interval; } ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_9__ {scalar_t__ xid; scalar_t__ hlen; int yiaddr; int * chaddr; } ;


 size_t DHO_DHCP_MESSAGE_TYPE ;
 scalar_t__ S_SELECTING ;
 int add_timeout (int,int (*) (struct interface_info*),struct interface_info*) ;
 int cancel_timeout (int ,struct interface_info*) ;
 int cur_time ;
 int debug (char*,char const*) ;
 scalar_t__ memcmp (int ,int *,scalar_t__) ;
 int note (char*,...) ;
 struct client_lease* packet_to_lease (struct packet*) ;
 int piaddr (int ) ;
 scalar_t__ script_go () ;
 int script_init (char*,int ) ;
 int script_write_params (char*,struct client_lease*) ;
 int send_discover ;
 int state_selecting (struct interface_info*) ;

void
dhcpoffer(struct packet *packet)
{
 struct interface_info *ip = packet->interface;
 struct client_lease *lease, *lp;
 int i;
 int arp_timeout_needed, stop_selecting;
 const char *name = packet->options[DHO_DHCP_MESSAGE_TYPE].len ?
     "DHCPOFFER" : "BOOTREPLY";



 if (ip->client->state != S_SELECTING ||
     packet->interface->client->xid != packet->raw->xid ||
     (packet->interface->hw_address.hlen != packet->raw->hlen) ||
     (memcmp(packet->interface->hw_address.haddr,
     packet->raw->chaddr, packet->raw->hlen)))
  return;

 note("%s from %s", name, piaddr(packet->client_addr));




 for (i = 0; ip->client->config->required_options[i]; i++) {
  if (!packet->options[ip->client->config->
      required_options[i]].len) {
   note("%s isn't satisfactory.", name);
   return;
  }
 }


 for (lease = ip->client->offered_leases;
     lease; lease = lease->next) {
  if (lease->address.len == sizeof(packet->raw->yiaddr) &&
      !memcmp(lease->address.iabuf,
      &packet->raw->yiaddr, lease->address.len)) {
   debug("%s already seen.", name);
   return;
  }
 }

 lease = packet_to_lease(packet);
 if (!lease) {
  note("packet_to_lease failed.");
  return;
 }



 if (!packet->options[DHO_DHCP_MESSAGE_TYPE].len)
  lease->is_bootp = 1;


 lease->medium = ip->client->medium;


 script_init("ARPSEND", lease->medium);
 script_write_params("check_", lease);


 if (script_go())
  arp_timeout_needed = 0;
 else
  arp_timeout_needed = 2;


 stop_selecting =
     ip->client->first_sending + ip->client->config->select_interval;



 if (lease->address.len == ip->client->requested_address.len &&
     !memcmp(lease->address.iabuf,
     ip->client->requested_address.iabuf,
     ip->client->requested_address.len)) {
  lease->next = ip->client->offered_leases;
  ip->client->offered_leases = lease;
 } else {




  if (ip->client->offered_leases &&
      (cur_time + arp_timeout_needed) > stop_selecting)
   arp_timeout_needed = 0;


  lease->next = ((void*)0);
  if (!ip->client->offered_leases)
   ip->client->offered_leases = lease;
  else {
   for (lp = ip->client->offered_leases; lp->next;
       lp = lp->next)
    ;
   lp->next = lease;
  }
 }




 if (stop_selecting - cur_time < arp_timeout_needed)
  stop_selecting = cur_time + arp_timeout_needed;




 if (stop_selecting <= 0)
  state_selecting(ip);
 else {
  add_timeout(stop_selecting, state_selecting, ip);
  cancel_timeout(send_discover, ip);
 }
}
