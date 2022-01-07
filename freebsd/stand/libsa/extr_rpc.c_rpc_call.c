
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct auth_info {void* authlen; void* authtype; } ;
struct TYPE_3__ {void* rok_status; struct auth_info rok_auth; } ;
struct TYPE_4__ {TYPE_1__ rpu_rok; } ;
struct rpc_reply {TYPE_2__ rp_u; } ;
struct rpc_call {void* rp_proc; void* rp_vers; void* rp_prog; void* rp_rpcvers; void* rp_direction; void* rp_xid; } ;
struct iodesc {int destport; } ;
struct auth_unix {int dummy; } ;
typedef int ssize_t ;
typedef int n_long ;


 int EBADRPC ;
 int RPCAUTH_NULL ;
 int RPCAUTH_UNIX ;
 int RPC_CALL ;
 int RPC_VER2 ;
 int bzero (char*,int) ;
 scalar_t__ debug ;
 int errno ;
 int free (void*) ;
 void* htonl (int) ;
 int htons (int) ;
 int ntohl (void*) ;
 int printf (char*,...) ;
 int recvrpc ;
 int rpc_getport (struct iodesc*,int,int) ;
 int rpc_xid ;
 int sendrecv (struct iodesc*,int ,char*,int,int ,void**,void**,int *) ;
 int sendudp ;

ssize_t
rpc_call(struct iodesc *d, n_long prog, n_long vers, n_long proc,
 void *sdata, size_t slen, void **rdata, void **pkt)
{
 ssize_t cc, rsize;
 struct auth_info *auth;
 struct rpc_call *call;
 struct rpc_reply *reply;
 char *send_head, *send_tail;
 void *ptr;
 n_long x;
 int port;







 port = rpc_getport(d, prog, vers);
 if (port == -1)
  return (-1);

 d->destport = htons(port);





 send_head = sdata;
 send_tail = (char *)sdata + slen;


 send_head -= sizeof(*auth);
 auth = (struct auth_info *)send_head;
 auth->authtype = htonl(RPCAUTH_NULL);
 auth->authlen = 0;


 send_head -= sizeof(struct auth_unix);
 bzero(send_head, sizeof(struct auth_unix));
 send_head -= sizeof(*auth);
 auth = (struct auth_info *)send_head;
 auth->authtype = htonl(RPCAUTH_UNIX);
 auth->authlen = htonl(sizeof(struct auth_unix));


 send_head -= sizeof(*call);
 call = (struct rpc_call *)send_head;
 rpc_xid++;
 call->rp_xid = htonl(rpc_xid);
 call->rp_direction = htonl(RPC_CALL);
 call->rp_rpcvers = htonl(RPC_VER2);
 call->rp_prog = htonl(prog);
 call->rp_vers = htonl(vers);
 call->rp_proc = htonl(proc);

 ptr = ((void*)0);
 cc = sendrecv(d,
     sendudp, send_head, send_tail - send_head,
     recvrpc, &ptr, (void **)&reply, ((void*)0));





 if (cc == -1)
  return (-1);

 if (cc <= sizeof(*reply)) {
  errno = EBADRPC;
  free(ptr);
  return (-1);
 }





 auth = &reply->rp_u.rpu_rok.rok_auth;
 x = ntohl(auth->authlen);
 if (x != 0) {




  errno = EBADRPC;
  free(ptr);
  return (-1);
 }
 x = ntohl(reply->rp_u.rpu_rok.rok_status);
 if (x != 0) {
  printf("callrpc: error = %ld\n", (long)x);
  errno = EBADRPC;
  free(ptr);
  return (-1);
 }

 rsize = cc - sizeof(*reply);
 *rdata = (void *)((uintptr_t)reply + sizeof(*reply));
 *pkt = ptr;
 return (rsize);
}
