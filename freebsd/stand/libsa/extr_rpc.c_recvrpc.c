
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {int rpu_errno; } ;
struct rpc_reply {TYPE_1__ rp_u; int rp_astatus; int rp_direction; int rp_xid; } ;
struct iodesc {int dummy; } ;
typedef int ssize_t ;


 int RPC_MSGACCEPTED ;
 int RPC_REPLY ;
 scalar_t__ debug ;
 int errno ;
 int free (void*) ;
 int ntohl (int ) ;
 int printf (char*,...) ;
 int readudp (struct iodesc*,void**,void**,int ) ;
 int rpc_xid ;

__attribute__((used)) static ssize_t
recvrpc(struct iodesc *d, void **pkt, void **payload, time_t tleft, void *extra)
{
 void *ptr;
 struct rpc_reply *reply;
 ssize_t n;
 int x;

 errno = 0;





 ptr = ((void*)0);
 n = readudp(d, &ptr, (void **)&reply, tleft);
 if (n <= (4 * 4)) {
  free(ptr);
  return (-1);
 }

 x = ntohl(reply->rp_xid);
 if (x != rpc_xid) {




  free(ptr);
  return (-1);
 }

 x = ntohl(reply->rp_direction);
 if (x != RPC_REPLY) {




  free(ptr);
  return (-1);
 }

 x = ntohl(reply->rp_astatus);
 if (x != RPC_MSGACCEPTED) {
  errno = ntohl(reply->rp_u.rpu_errno);
  printf("recvrpc: reject, astat=%d, errno=%d\n", x, errno);
  free(ptr);
  return (-1);
 }

 *pkt = ptr;
 *payload = reply;

 return (n);
}
