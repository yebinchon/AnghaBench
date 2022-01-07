
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_11__ {int len; scalar_t__ buf; } ;
struct TYPE_13__ {int x_op; } ;
struct svc_dg_data {int * su_cache; int su_xid; TYPE_1__ su_srcaddr; int su_iosz; TYPE_3__ su_xdrs; } ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rpc_msg {int rm_xid; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int bool_t ;
typedef TYPE_3__ XDR ;
struct TYPE_12__ {int len; scalar_t__ buf; } ;
struct TYPE_14__ {int xp_addrlen; int xp_fd; TYPE_2__ xp_rtaddr; struct sockaddr_in xp_raddr; } ;
typedef TYPE_4__ SVCXPRT ;


 scalar_t__ AF_INET ;
 scalar_t__ EINTR ;
 int FALSE ;
 int TRUE ;
 int XDR_DECODE ;
 int XDR_SETPOS (TYPE_3__*,int ) ;
 int _sendto (int ,char*,size_t,int ,struct sockaddr*,int) ;
 scalar_t__ cache_get (TYPE_4__*,struct rpc_msg*,char**,size_t*) ;
 scalar_t__ errno ;
 scalar_t__ mem_alloc (int) ;
 int mem_free (scalar_t__,int) ;
 int memcpy (scalar_t__,struct sockaddr_storage*,int) ;
 int rpc_buffer (TYPE_4__*) ;
 struct svc_dg_data* su_data (TYPE_4__*) ;
 int svc_dg_recvfrom (int ,int ,int ,struct sockaddr*,int*,struct sockaddr*,int *) ;
 int xdr_callmsg (TYPE_3__*,struct rpc_msg*) ;

__attribute__((used)) static bool_t
svc_dg_recv(SVCXPRT *xprt, struct rpc_msg *msg)
{
 struct svc_dg_data *su = su_data(xprt);
 XDR *xdrs = &(su->su_xdrs);
 char *reply;
 struct sockaddr_storage ss;
 socklen_t alen;
 size_t replylen;
 ssize_t rlen;

again:
 alen = sizeof (struct sockaddr_storage);
 rlen = svc_dg_recvfrom(xprt->xp_fd, rpc_buffer(xprt), su->su_iosz,
     (struct sockaddr *)(void *)&ss, &alen,
     (struct sockaddr *)su->su_srcaddr.buf, &su->su_srcaddr.len);
 if (rlen == -1 && errno == EINTR)
  goto again;
 if (rlen == -1 || (rlen < (ssize_t)(4 * sizeof (u_int32_t))))
  return (FALSE);
 if (xprt->xp_rtaddr.len < alen) {
  if (xprt->xp_rtaddr.len != 0)
   mem_free(xprt->xp_rtaddr.buf, xprt->xp_rtaddr.len);
  xprt->xp_rtaddr.buf = mem_alloc(alen);
  xprt->xp_rtaddr.len = alen;
 }
 memcpy(xprt->xp_rtaddr.buf, &ss, alen);






 xdrs->x_op = XDR_DECODE;
 XDR_SETPOS(xdrs, 0);
 if (! xdr_callmsg(xdrs, msg)) {
  return (FALSE);
 }
 su->su_xid = msg->rm_xid;
 if (su->su_cache != ((void*)0)) {
  if (cache_get(xprt, msg, &reply, &replylen)) {
   (void)_sendto(xprt->xp_fd, reply, replylen, 0,
       (struct sockaddr *)(void *)&ss, alen);
   return (FALSE);
  }
 }
 return (TRUE);
}
