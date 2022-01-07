
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct interface_info {TYPE_2__* client; } ;
struct TYPE_6__ {scalar_t__ is_bootp; } ;
struct TYPE_5__ {int * medium; TYPE_1__* config; int interval; int first_sending; int destination; TYPE_3__* active; int xid; int state; } ;
struct TYPE_4__ {int initial_interval; } ;


 int S_REBOOTING ;
 int arc4random () ;
 int cur_time ;
 int iaddr_broadcast ;
 int make_request (struct interface_info*,TYPE_3__*) ;
 int send_request (struct interface_info*) ;
 int state_init (struct interface_info*) ;

void
state_reboot(void *ipp)
{
 struct interface_info *ip = ipp;


 if (!ip->client->active || ip->client->active->is_bootp) {
  state_init(ip);
  return;
 }


 ip->client->state = S_REBOOTING;




 ip->client->xid = arc4random();



 make_request(ip, ip->client->active);
 ip->client->destination = iaddr_broadcast;
 ip->client->first_sending = cur_time;
 ip->client->interval = ip->client->config->initial_interval;


 ip->client->medium = ((void*)0);


 send_request(ip);
}
