
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int s6_addr; } ;
struct TYPE_12__ {TYPE_4__ sin6_addr; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_10__ {TYPE_2__ sin_addr; } ;
struct TYPE_8__ {int sa_family; } ;
union socket_addr {TYPE_5__ sin6; TYPE_3__ sin; TYPE_1__ sa; } ;
struct message {int op; size_t id; int data; } ;
typedef size_t ssize_t ;
typedef int socklen_t ;
struct TYPE_13__ {int recvcnt; } ;


 int AF_INET ;
 int AF_INET6 ;
 TYPE_6__* clients ;
 int htobe32 (int ) ;
 int id ;
 char* inet_ntop (int ,int *,char*,int) ;
 int memset (TYPE_6__*,int ,int) ;




 int printf (char*,char*) ;
 size_t svr_send (struct message*,size_t,union socket_addr*,int ) ;

__attribute__((used)) static int svr_process(struct message *msg, size_t size,
         union socket_addr *addr, socklen_t addrlen)
{
 char str[64];
 ssize_t ret;

 switch (msg->op) {
 case 129:
  if (addr->sa.sa_family == AF_INET) {
   printf("client login from %s\n",
          inet_ntop(AF_INET, &addr->sin.sin_addr.s_addr,
      str, sizeof str));
  } else {
   printf("client login from %s\n",
          inet_ntop(AF_INET6, &addr->sin6.sin6_addr.s6_addr,
      str, sizeof str));
  }
  msg->id = id++;

 case 128:
  memset(&clients[msg->id], 0, sizeof clients[msg->id]);
  break;
 case 131:
  clients[msg->id].recvcnt++;
  break;
 case 130:
  msg->data = htobe32(clients[msg->id].recvcnt);
  break;
 default:
  clients[msg->id].recvcnt++;
  return 0;
 }

 ret = svr_send(msg, size, addr, addrlen);
 return (ret == size) ? 0 : (int) ret;
}
