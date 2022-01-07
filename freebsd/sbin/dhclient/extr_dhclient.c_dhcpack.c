
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct packet {int client_addr; TYPE_2__* raw; struct interface_info* interface; } ;
struct TYPE_7__ {scalar_t__ hlen; int haddr; } ;
struct interface_info {TYPE_5__* client; TYPE_1__ hw_address; } ;
struct client_lease {int expiry; int renewal; int rebind; TYPE_3__* options; } ;
struct TYPE_12__ {scalar_t__* default_actions; TYPE_4__* defaults; } ;
struct TYPE_11__ {scalar_t__ xid; scalar_t__ state; struct client_lease* new; TYPE_6__* config; } ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_8__ {scalar_t__ xid; scalar_t__ hlen; int chaddr; } ;


 scalar_t__ ACTION_SUPERSEDE ;
 size_t DHO_DHCP_LEASE_TIME ;
 size_t DHO_DHCP_REBINDING_TIME ;
 size_t DHO_DHCP_RENEWAL_TIME ;
 scalar_t__ S_REBINDING ;
 scalar_t__ S_REBOOTING ;
 scalar_t__ S_RENEWING ;
 scalar_t__ S_REQUESTING ;
 int TIME_MAX ;
 int bind_lease (struct interface_info*) ;
 int cancel_timeout (int ,struct interface_info*) ;
 int cur_time ;
 int default_lease_time ;
 void* getULong (scalar_t__) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int note (char*,...) ;
 struct client_lease* packet_to_lease (struct packet*) ;
 int piaddr (int ) ;
 int send_request ;

void
dhcpack(struct packet *packet)
{
 struct interface_info *ip = packet->interface;
 struct client_lease *lease;



 if (packet->interface->client->xid != packet->raw->xid ||
     (packet->interface->hw_address.hlen != packet->raw->hlen) ||
     (memcmp(packet->interface->hw_address.haddr,
     packet->raw->chaddr, packet->raw->hlen)))
  return;

 if (ip->client->state != S_REBOOTING &&
     ip->client->state != S_REQUESTING &&
     ip->client->state != S_RENEWING &&
     ip->client->state != S_REBINDING)
  return;

 note("DHCPACK from %s", piaddr(packet->client_addr));

 lease = packet_to_lease(packet);
 if (!lease) {
  note("packet_to_lease failed.");
  return;
 }

 ip->client->new = lease;


 cancel_timeout(send_request, ip);


        if (ip->client->config->default_actions[DHO_DHCP_LEASE_TIME] ==
            ACTION_SUPERSEDE)
  ip->client->new->expiry = getULong(
      ip->client->config->defaults[DHO_DHCP_LEASE_TIME].data);
        else if (ip->client->new->options[DHO_DHCP_LEASE_TIME].data)
  ip->client->new->expiry = getULong(
      ip->client->new->options[DHO_DHCP_LEASE_TIME].data);
 else
  ip->client->new->expiry = default_lease_time;



 if (ip->client->new->expiry < 0 ||
            ip->client->new->expiry > TIME_MAX - cur_time)
  ip->client->new->expiry = TIME_MAX - cur_time;

 if (ip->client->new->expiry < 60)
  ip->client->new->expiry = 60;





        if (ip->client->config->default_actions[DHO_DHCP_RENEWAL_TIME] ==
            ACTION_SUPERSEDE)
  ip->client->new->renewal = getULong(
      ip->client->config->defaults[DHO_DHCP_RENEWAL_TIME].data);
        else if (ip->client->new->options[DHO_DHCP_RENEWAL_TIME].len)
  ip->client->new->renewal = getULong(
      ip->client->new->options[DHO_DHCP_RENEWAL_TIME].data);
 else
  ip->client->new->renewal = ip->client->new->expiry / 2;
        if (ip->client->new->renewal < 0 ||
            ip->client->new->renewal > ip->client->new->expiry / 2)
                ip->client->new->renewal = ip->client->new->expiry / 2;


        if (ip->client->config->default_actions[DHO_DHCP_REBINDING_TIME] ==
            ACTION_SUPERSEDE)
  ip->client->new->rebind = getULong(
      ip->client->config->defaults[DHO_DHCP_REBINDING_TIME].data);
        else if (ip->client->new->options[DHO_DHCP_REBINDING_TIME].len)
  ip->client->new->rebind = getULong(
      ip->client->new->options[DHO_DHCP_REBINDING_TIME].data);
 else
  ip->client->new->rebind = ip->client->new->renewal / 4 * 7;
 if (ip->client->new->rebind < 0 ||
            ip->client->new->rebind > ip->client->new->renewal / 4 * 7)
                ip->client->new->rebind = ip->client->new->renewal / 4 * 7;


        ip->client->new->expiry += cur_time;
        ip->client->new->renewal += cur_time;
        ip->client->new->rebind += cur_time;

 bind_lease(ip);
}
