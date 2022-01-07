
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int v4; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_6__ {int v4; } ;
struct TYPE_5__ {int v4; } ;
struct sockaddr_in {int sin_len; int rdport; int sin_port; TYPE_4__ rdaddr; TYPE_3__ sin_addr; void* sin_family; int dport; int sport; TYPE_2__ daddr; TYPE_1__ saddr; int proto; void* af; int direction; } ;
struct pfioc_natlook {int sin_len; int rdport; int sin_port; TYPE_4__ rdaddr; TYPE_3__ sin_addr; void* sin_family; int dport; int sport; TYPE_2__ daddr; TYPE_1__ saddr; int proto; void* af; int direction; } ;


 void* AF_INET ;
 int DIOCNATLOOK ;
 int IPPROTO_TCP ;
 int PF_OUT ;
 int dev ;
 int ioctl (int ,int ,struct sockaddr_in*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct sockaddr_in*,int ,int) ;

int
server_lookup4(struct sockaddr_in *client, struct sockaddr_in *proxy,
    struct sockaddr_in *server)
{
 struct pfioc_natlook pnl;

 memset(&pnl, 0, sizeof pnl);
 pnl.direction = PF_OUT;
 pnl.af = AF_INET;
 pnl.proto = IPPROTO_TCP;
 memcpy(&pnl.saddr.v4, &client->sin_addr.s_addr, sizeof pnl.saddr.v4);
 memcpy(&pnl.daddr.v4, &proxy->sin_addr.s_addr, sizeof pnl.daddr.v4);
 pnl.sport = client->sin_port;
 pnl.dport = proxy->sin_port;

 if (ioctl(dev, DIOCNATLOOK, &pnl) == -1)
  return (-1);

 memset(server, 0, sizeof(struct sockaddr_in));
 server->sin_len = sizeof(struct sockaddr_in);
 server->sin_family = AF_INET;
 memcpy(&server->sin_addr.s_addr, &pnl.rdaddr.v4,
     sizeof server->sin_addr.s_addr);
 server->sin_port = pnl.rdport;

 return (0);
}
