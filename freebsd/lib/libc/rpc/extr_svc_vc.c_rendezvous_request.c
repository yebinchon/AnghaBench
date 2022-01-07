
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_storage {scalar_t__ ss_family; scalar_t__ ss_len; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rpc_msg {int dummy; } ;
struct cf_rendezvous {scalar_t__ recvsize; scalar_t__ maxrec; int sendsize; } ;
struct cf_conn {scalar_t__ recvsize; scalar_t__ maxrec; int last_recv_time; int nonblock; int xdrs; int sendsize; } ;
struct __rpc_sockinfo {scalar_t__ si_proto; } ;
typedef size_t socklen_t ;
typedef int len ;
typedef int fd_set ;
typedef int bool_t ;
struct TYPE_7__ {int * buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct TYPE_6__ {size_t len; int * buf; } ;
struct TYPE_8__ {int xp_addrlen; TYPE_2__ xp_ltaddr; scalar_t__ xp_p1; TYPE_1__ xp_rtaddr; struct sockaddr_in xp_raddr; int xp_fd; } ;
typedef TYPE_3__ SVCXPRT ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_LOCAL ;
 scalar_t__ EINTR ;
 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 int FALSE ;
 int F_GETFL ;
 int F_SETFL ;
 scalar_t__ IPPROTO_TCP ;
 int O_NONBLOCK ;
 int TCP_NODELAY ;
 int TRUE ;
 scalar_t__ __rpc_fd2sockinfo (int,struct __rpc_sockinfo*) ;
 int __svc_clean_idle (int *,int ,int ) ;
 int __xdrrec_setnonblock (int *,scalar_t__) ;
 int _accept (int ,struct sockaddr*,size_t*) ;
 int _fcntl (int,int ,int) ;
 scalar_t__ _getsockname (int,struct sockaddr*,size_t*) ;
 int _setsockopt (int,scalar_t__,int ,size_t*,int) ;
 int assert (int ) ;
 scalar_t__ errno ;
 int gettimeofday (int *,int *) ;
 TYPE_3__* makefd_xprt (int,int ,scalar_t__) ;
 void* mem_alloc (size_t) ;
 int memcpy (int *,struct sockaddr_storage*,size_t) ;
 int svc_fdset ;
 int warnx (char*) ;

__attribute__((used)) static bool_t
rendezvous_request(SVCXPRT *xprt, struct rpc_msg *msg)
{
 int sock, flags;
 struct cf_rendezvous *r;
 struct cf_conn *cd;
 struct sockaddr_storage addr, sslocal;
 socklen_t len, slen;
 struct __rpc_sockinfo si;
 SVCXPRT *newxprt;
 fd_set cleanfds;

 assert(xprt != ((void*)0));
 assert(msg != ((void*)0));

 r = (struct cf_rendezvous *)xprt->xp_p1;
again:
 len = sizeof addr;
 if ((sock = _accept(xprt->xp_fd, (struct sockaddr *)(void *)&addr,
     &len)) < 0) {
  if (errno == EINTR)
   goto again;




  if (errno == EMFILE || errno == ENFILE) {
   cleanfds = svc_fdset;
   __svc_clean_idle(&cleanfds, 0, FALSE);
   goto again;
  }
  return (FALSE);
 }



 newxprt = makefd_xprt(sock, r->sendsize, r->recvsize);
 newxprt->xp_rtaddr.buf = mem_alloc(len);
 if (newxprt->xp_rtaddr.buf == ((void*)0))
  return (FALSE);
 memcpy(newxprt->xp_rtaddr.buf, &addr, len);
 newxprt->xp_rtaddr.len = len;






 if (__rpc_fd2sockinfo(sock, &si) && si.si_proto == IPPROTO_TCP) {
  len = 1;

  _setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, &len, sizeof (len));
 }

 cd = (struct cf_conn *)newxprt->xp_p1;

 cd->recvsize = r->recvsize;
 cd->sendsize = r->sendsize;
 cd->maxrec = r->maxrec;

 if (cd->maxrec != 0) {
  flags = _fcntl(sock, F_GETFL, 0);
  if (flags == -1)
   return (FALSE);
  if (_fcntl(sock, F_SETFL, flags | O_NONBLOCK) == -1)
   return (FALSE);
  if (cd->recvsize > cd->maxrec)
   cd->recvsize = cd->maxrec;
  cd->nonblock = TRUE;
  __xdrrec_setnonblock(&cd->xdrs, cd->maxrec);
 } else
  cd->nonblock = FALSE;
 slen = sizeof(struct sockaddr_storage);
 if(_getsockname(sock, (struct sockaddr *)(void *)&sslocal, &slen) < 0) {
  warnx("svc_vc_create: could not retrieve local addr");
  newxprt->xp_ltaddr.maxlen = newxprt->xp_ltaddr.len = 0;
 } else {
  newxprt->xp_ltaddr.maxlen = newxprt->xp_ltaddr.len = sslocal.ss_len;
  newxprt->xp_ltaddr.buf = mem_alloc((size_t)sslocal.ss_len);
  if (newxprt->xp_ltaddr.buf == ((void*)0)) {
   warnx("svc_vc_create: no mem for local addr");
   newxprt->xp_ltaddr.maxlen = newxprt->xp_ltaddr.len = 0;
  } else {
   memcpy(newxprt->xp_ltaddr.buf, &sslocal, (size_t)sslocal.ss_len);
  }
 }

 gettimeofday(&cd->last_recv_time, ((void*)0));

 return (FALSE);
}
