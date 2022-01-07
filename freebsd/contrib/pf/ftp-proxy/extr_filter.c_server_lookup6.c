
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int v6; } ;
struct TYPE_7__ {int s6_addr; } ;
struct TYPE_6__ {int v6; } ;
struct TYPE_5__ {int v6; } ;
struct sockaddr_in6 {int sin6_len; int rdport; int sin6_port; TYPE_4__ rdaddr; TYPE_3__ sin6_addr; void* sin6_family; int dport; int sport; TYPE_2__ daddr; TYPE_1__ saddr; int proto; void* af; int direction; } ;
struct pfioc_natlook {int sin6_len; int rdport; int sin6_port; TYPE_4__ rdaddr; TYPE_3__ sin6_addr; void* sin6_family; int dport; int sport; TYPE_2__ daddr; TYPE_1__ saddr; int proto; void* af; int direction; } ;


 void* AF_INET6 ;
 int DIOCNATLOOK ;
 int IPPROTO_TCP ;
 int PF_OUT ;
 int dev ;
 int ioctl (int ,int ,struct sockaddr_in6*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;

int
server_lookup6(struct sockaddr_in6 *client, struct sockaddr_in6 *proxy,
    struct sockaddr_in6 *server)
{
 struct pfioc_natlook pnl;

 memset(&pnl, 0, sizeof pnl);
 pnl.direction = PF_OUT;
 pnl.af = AF_INET6;
 pnl.proto = IPPROTO_TCP;
 memcpy(&pnl.saddr.v6, &client->sin6_addr.s6_addr, sizeof pnl.saddr.v6);
 memcpy(&pnl.daddr.v6, &proxy->sin6_addr.s6_addr, sizeof pnl.daddr.v6);
 pnl.sport = client->sin6_port;
 pnl.dport = proxy->sin6_port;

 if (ioctl(dev, DIOCNATLOOK, &pnl) == -1)
  return (-1);

 memset(server, 0, sizeof(struct sockaddr_in6));
 server->sin6_len = sizeof(struct sockaddr_in6);
 server->sin6_family = AF_INET6;
 memcpy(&server->sin6_addr.s6_addr, &pnl.rdaddr.v6,
     sizeof server->sin6_addr);
 server->sin6_port = pnl.rdport;

 return (0);
}
