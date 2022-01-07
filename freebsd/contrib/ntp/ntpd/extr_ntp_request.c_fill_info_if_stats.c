
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {void* addr; void* addr6; } ;
struct TYPE_8__ {void* addr; void* addr6; } ;
struct TYPE_7__ {void* addr; void* addr6; } ;
struct info_if_stats {int v6_flag; int action; void* peercnt; int ignore_packets; void* uptime; void* ifnum; void* ifindex; void* scopeid; void* notsent; void* sent; void* received; void* num_mcast; void* last_ttl; void* flags; int family; int name; TYPE_3__ unmask; TYPE_2__ unbcast; TYPE_1__ unaddr; } ;
struct TYPE_10__ {int action; TYPE_5__* ep; } ;
typedef TYPE_4__ interface_info_t ;
struct TYPE_11__ {int flags; int last_ttl; int num_mcast; int received; int sent; int notsent; int ifindex; int ifnum; int starttime; int peercnt; int ignore_packets; int family; int name; int mask; int bcast; int sin; } ;
typedef TYPE_5__ endpt ;


 scalar_t__ IS_IPV6 (int *) ;
 void* SOCK_ADDR4 (int *) ;
 void* SOCK_ADDR6 (int *) ;
 int ZERO (struct info_if_stats) ;
 int client_v6_capable ;
 int current_time ;
 void* htonl (int) ;
 int htons (int ) ;
 scalar_t__ more_pkt () ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
fill_info_if_stats(void *data, interface_info_t *interface_info)
{
 struct info_if_stats **ifsp = (struct info_if_stats **)data;
 struct info_if_stats *ifs = *ifsp;
 endpt *ep = interface_info->ep;

 if (((void*)0) == ifs)
  return;

 ZERO(*ifs);

 if (IS_IPV6(&ep->sin)) {
  if (!client_v6_capable)
   return;
  ifs->v6_flag = 1;
  ifs->unaddr.addr6 = SOCK_ADDR6(&ep->sin);
  ifs->unbcast.addr6 = SOCK_ADDR6(&ep->bcast);
  ifs->unmask.addr6 = SOCK_ADDR6(&ep->mask);
 } else {
  ifs->v6_flag = 0;
  ifs->unaddr.addr = SOCK_ADDR4(&ep->sin);
  ifs->unbcast.addr = SOCK_ADDR4(&ep->bcast);
  ifs->unmask.addr = SOCK_ADDR4(&ep->mask);
 }
 ifs->v6_flag = htonl(ifs->v6_flag);
 strlcpy(ifs->name, ep->name, sizeof(ifs->name));
 ifs->family = htons(ep->family);
 ifs->flags = htonl(ep->flags);
 ifs->last_ttl = htonl(ep->last_ttl);
 ifs->num_mcast = htonl(ep->num_mcast);
 ifs->received = htonl(ep->received);
 ifs->sent = htonl(ep->sent);
 ifs->notsent = htonl(ep->notsent);
 ifs->ifindex = htonl(ep->ifindex);

 ifs->scopeid = ifs->ifindex;
 ifs->ifnum = htonl(ep->ifnum);
 ifs->uptime = htonl(current_time - ep->starttime);
 ifs->ignore_packets = ep->ignore_packets;
 ifs->peercnt = htonl(ep->peercnt);
 ifs->action = interface_info->action;

 *ifsp = (struct info_if_stats *)more_pkt();
}
