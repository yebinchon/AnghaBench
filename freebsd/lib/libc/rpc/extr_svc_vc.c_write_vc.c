
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct cf_conn {void* strm_stat; scalar_t__ nonblock; } ;
struct TYPE_2__ {int xp_fd; scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 scalar_t__ EAGAIN ;
 void* XPRT_DIED ;
 int _write (int ,void*,size_t) ;
 int assert (int ) ;
 scalar_t__ errno ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static int
write_vc(void *xprtp, void *buf, int len)
{
 SVCXPRT *xprt;
 int i, cnt;
 struct cf_conn *cd;
 struct timeval tv0, tv1;

 xprt = (SVCXPRT *)xprtp;
 assert(xprt != ((void*)0));

 cd = (struct cf_conn *)xprt->xp_p1;

 if (cd->nonblock)
  gettimeofday(&tv0, ((void*)0));

 for (cnt = len; cnt > 0; cnt -= i, buf = (char *)buf + i) {
  i = _write(xprt->xp_fd, buf, (size_t)cnt);
  if (i < 0) {
   if (errno != EAGAIN || !cd->nonblock) {
    cd->strm_stat = XPRT_DIED;
    return (-1);
   }
   if (cd->nonblock) {







    gettimeofday(&tv1, ((void*)0));
    if (tv1.tv_sec - tv0.tv_sec >= 2) {
     cd->strm_stat = XPRT_DIED;
     return (-1);
    }
   }
   i = 0;
  }
 }

 return (len);
}
