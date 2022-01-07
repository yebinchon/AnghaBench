
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct option_data {int len; int data; } ;
struct interface_info {TYPE_3__* client; } ;
struct TYPE_10__ {scalar_t__ renewal; int address; int medium; struct option_data* options; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_4__* active; TYPE_4__* new; TYPE_4__* alias; TYPE_2__* config; int medium; } ;
struct TYPE_8__ {scalar_t__* default_actions; TYPE_1__* defaults; } ;
struct TYPE_7__ {int data; } ;


 scalar_t__ ACTION_SUPERSEDE ;
 size_t DHO_INTERFACE_MTU ;
 scalar_t__ MIN_MTU ;
 scalar_t__ S_BOUND ;
 scalar_t__ S_REBOOTING ;
 scalar_t__ S_RENEWING ;
 scalar_t__ S_REQUESTING ;
 int add_timeout (scalar_t__,int ,struct interface_info*) ;
 scalar_t__ be16dec (int ) ;
 scalar_t__ cur_time ;
 int free_client_lease (TYPE_4__*) ;
 scalar_t__ getUShort (int ) ;
 int go_daemon () ;
 int interface_set_mtu_unpriv (int ,scalar_t__) ;
 int note (char*,int ,int) ;
 int piaddr (int ) ;
 int privfd ;
 int reinitialize_interfaces () ;
 int script_go () ;
 int script_init (char*,int ) ;
 int script_write_params (char*,TYPE_4__*) ;
 int state_bound ;
 int warning (char*,unsigned int,scalar_t__) ;
 int write_client_lease (struct interface_info*,TYPE_4__*,int ) ;

void
bind_lease(struct interface_info *ip)
{
 struct option_data *opt;


 ip->client->new->medium = ip->client->medium;

 opt = &ip->client->new->options[DHO_INTERFACE_MTU];
 if (opt->len == sizeof(u_int16_t)) {
  u_int16_t mtu = 0;
  u_int16_t old_mtu = 0;
  bool supersede = (ip->client->config->default_actions[DHO_INTERFACE_MTU] ==
   ACTION_SUPERSEDE);

  if (supersede)
   mtu = getUShort(ip->client->config->defaults[DHO_INTERFACE_MTU].data);
  else
   mtu = be16dec(opt->data);

  if (ip->client->active) {
   opt = &ip->client->active->options[DHO_INTERFACE_MTU];
   if (opt->len == sizeof(u_int16_t)) {
    old_mtu = be16dec(opt->data);
   }
  }

  if (mtu < MIN_MTU) {


   if (!supersede || mtu != 0)
    warning("mtu size %u < %d: ignored", (unsigned)mtu, MIN_MTU);
  } else if (ip->client->state != S_RENEWING || mtu != old_mtu) {
   interface_set_mtu_unpriv(privfd, mtu);
  }
 }


 write_client_lease(ip, ip->client->new, 0);


 script_init((ip->client->state == S_REQUESTING ? "BOUND" :
     (ip->client->state == S_RENEWING ? "RENEW" :
     (ip->client->state == S_REBOOTING ? "REBOOT" : "REBIND"))),
     ip->client->new->medium);
 if (ip->client->active && ip->client->state != S_REBOOTING)
  script_write_params("old_", ip->client->active);
 script_write_params("new_", ip->client->new);
 if (ip->client->alias)
  script_write_params("alias_", ip->client->alias);
 script_go();


 if (ip->client->active)
  free_client_lease(ip->client->active);
 ip->client->active = ip->client->new;
 ip->client->new = ((void*)0);


 add_timeout(ip->client->active->renewal, state_bound, ip);

 note("bound to %s -- renewal in %d seconds.",
     piaddr(ip->client->active->address),
     (int)(ip->client->active->renewal - cur_time));
 ip->client->state = S_BOUND;
 reinitialize_interfaces();
 go_daemon();
}
