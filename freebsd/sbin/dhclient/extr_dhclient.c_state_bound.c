
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


struct interface_info {TYPE_4__* client; } ;
struct TYPE_12__ {int len; int iabuf; } ;
struct TYPE_11__ {TYPE_2__* options; } ;
struct TYPE_7__ {int xid; } ;
struct TYPE_10__ {int state; TYPE_3__* config; int interval; int first_sending; TYPE_6__ destination; TYPE_5__* active; TYPE_1__ packet; int xid; } ;
struct TYPE_9__ {int initial_interval; } ;
struct TYPE_8__ {int len; int data; } ;


 int ASSERT_STATE (int ,int ) ;
 size_t DHO_DHCP_SERVER_IDENTIFIER ;
 int S_BOUND ;
 int S_RENEWING ;
 int cur_time ;
 TYPE_6__ iaddr_broadcast ;
 int make_request (struct interface_info*,TYPE_5__*) ;
 int memcpy (int ,int ,int) ;
 int send_request (struct interface_info*) ;
 int state ;

void
state_bound(void *ipp)
{
 struct interface_info *ip = ipp;

 ASSERT_STATE(state, S_BOUND);


 make_request(ip, ip->client->active);
 ip->client->xid = ip->client->packet.xid;

 if (ip->client->active->options[DHO_DHCP_SERVER_IDENTIFIER].len == 4) {
  memcpy(ip->client->destination.iabuf, ip->client->active->
      options[DHO_DHCP_SERVER_IDENTIFIER].data, 4);
  ip->client->destination.len = 4;
 } else
  ip->client->destination = iaddr_broadcast;

 ip->client->first_sending = cur_time;
 ip->client->interval = ip->client->config->initial_interval;
 ip->client->state = S_RENEWING;


 send_request(ip);
}
