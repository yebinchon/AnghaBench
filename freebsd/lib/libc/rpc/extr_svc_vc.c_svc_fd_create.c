
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr_storage {scalar_t__ ss_family; scalar_t__ ss_len; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_10__ {int maxlen; } ;
struct TYPE_12__ {TYPE_3__ xp_ltaddr; } ;
struct TYPE_9__ {int * buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct TYPE_8__ {int * buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct TYPE_11__ {int xp_addrlen; TYPE_2__ xp_ltaddr; TYPE_1__ xp_rtaddr; struct sockaddr_in xp_raddr; } ;
typedef TYPE_4__ SVCXPRT ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_LOCAL ;
 scalar_t__ _getpeername (int,struct sockaddr*,int*) ;
 scalar_t__ _getsockname (int,struct sockaddr*,int*) ;
 int assert (int) ;
 TYPE_4__* makefd_xprt (int,int ,int ) ;
 void* mem_alloc (size_t) ;
 int mem_free (int *,int ) ;
 int memcpy (int *,struct sockaddr_storage*,size_t) ;
 TYPE_6__* rep ;
 int warnx (char*) ;

SVCXPRT *
svc_fd_create(int fd, u_int sendsize, u_int recvsize)
{
 struct sockaddr_storage ss;
 socklen_t slen;
 SVCXPRT *ret;

 assert(fd != -1);

 ret = makefd_xprt(fd, sendsize, recvsize);
 if (ret == ((void*)0))
  return ((void*)0);

 slen = sizeof (struct sockaddr_storage);
 if (_getsockname(fd, (struct sockaddr *)(void *)&ss, &slen) < 0) {
  warnx("svc_fd_create: could not retrieve local addr");
  goto freedata;
 }
 ret->xp_ltaddr.maxlen = ret->xp_ltaddr.len = ss.ss_len;
 ret->xp_ltaddr.buf = mem_alloc((size_t)ss.ss_len);
 if (ret->xp_ltaddr.buf == ((void*)0)) {
  warnx("svc_fd_create: no mem for local addr");
  goto freedata;
 }
 memcpy(ret->xp_ltaddr.buf, &ss, (size_t)ss.ss_len);

 slen = sizeof (struct sockaddr_storage);
 if (_getpeername(fd, (struct sockaddr *)(void *)&ss, &slen) < 0) {
  warnx("svc_fd_create: could not retrieve remote addr");
  goto freedata;
 }
 ret->xp_rtaddr.maxlen = ret->xp_rtaddr.len = ss.ss_len;
 ret->xp_rtaddr.buf = mem_alloc((size_t)ss.ss_len);
 if (ret->xp_rtaddr.buf == ((void*)0)) {
  warnx("svc_fd_create: no mem for local addr");
  goto freedata;
 }
 memcpy(ret->xp_rtaddr.buf, &ss, (size_t)ss.ss_len);







 return ret;

freedata:
 if (ret->xp_ltaddr.buf != ((void*)0))
  mem_free(ret->xp_ltaddr.buf, rep->xp_ltaddr.maxlen);

 return ((void*)0);
}
