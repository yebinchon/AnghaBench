
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct interface_info {TYPE_2__* client; } ;
struct client_lease {scalar_t__ expiry; scalar_t__ renewal; struct client_lease* next; int * medium; int address; } ;
struct TYPE_4__ {TYPE_1__* config; void* state; struct client_lease* alias; struct client_lease* active; struct client_lease* leases; } ;
struct TYPE_3__ {scalar_t__ retry_interval; } ;


 void* S_BOUND ;
 void* S_INIT ;
 int add_timeout (scalar_t__,int (*) (struct interface_info*),struct interface_info*) ;
 scalar_t__ cur_time ;
 int go_daemon () ;
 int note (char*,...) ;
 int piaddr (int ) ;
 int reinitialize_interfaces () ;
 int script_go () ;
 int script_init (char*,int *) ;
 int script_write_params (char*,struct client_lease*) ;
 int state_bound (struct interface_info*) ;
 int state_init (struct interface_info*) ;

void
state_panic(void *ipp)
{
 struct interface_info *ip = ipp;
 struct client_lease *loop = ip->client->active;
 struct client_lease *lp;

 note("No DHCPOFFERS received.");



 if (!ip->client->active && ip->client->leases)
  goto activate_next;


 while (ip->client->active) {
  if (ip->client->active->expiry > cur_time) {
   note("Trying recorded lease %s",
       piaddr(ip->client->active->address));


   script_init("TIMEOUT",
       ip->client->active->medium);
   script_write_params("new_", ip->client->active);
   if (ip->client->alias)
    script_write_params("alias_",
        ip->client->alias);




   if (!script_go()) {
    if (cur_time <
        ip->client->active->renewal) {
     ip->client->state = S_BOUND;
     note("bound: renewal in %d seconds.",
         (int)(ip->client->active->renewal -
         cur_time));
     add_timeout(
         ip->client->active->renewal,
         state_bound, ip);
    } else {
     ip->client->state = S_BOUND;
     note("bound: immediate renewal.");
     state_bound(ip);
    }
    reinitialize_interfaces();
    go_daemon();
    return;
   }
  }


  if (!ip->client->leases) {
   ip->client->leases = ip->client->active;
   ip->client->active = ((void*)0);
   break;
  }

activate_next:


  for (lp = ip->client->leases; lp->next; lp = lp->next)
   ;
  lp->next = ip->client->active;
  if (lp->next)
   lp->next->next = ((void*)0);
  ip->client->active = ip->client->leases;
  ip->client->leases = ip->client->leases->next;




  if (ip->client->active == loop)
   break;
  else if (!loop)
   loop = ip->client->active;
 }




 note("No working leases in persistent database - sleeping.\n");
 script_init("FAIL", ((void*)0));
 if (ip->client->alias)
  script_write_params("alias_", ip->client->alias);
 script_go();
 ip->client->state = S_INIT;
 add_timeout(cur_time + ip->client->config->retry_interval, state_init,
     ip);
 go_daemon();
}
