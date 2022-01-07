
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct iodesc {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ETIMEDOUT ;
 scalar_t__ MAXTMO ;
 scalar_t__ MAXWAIT ;
 scalar_t__ MINTMO ;
 scalar_t__ debug ;
 scalar_t__ errno ;
 scalar_t__ getsecs () ;
 int panic (char*,int,size_t) ;
 int printf (char*) ;
 int stub1 (struct iodesc*,void*,size_t) ;
 int stub2 (struct iodesc*,void**,void**,...) ;

ssize_t
sendrecv(struct iodesc *d,
    ssize_t (*sproc)(struct iodesc *, void *, size_t),
    void *sbuf, size_t ssize,
    ssize_t (*rproc)(struct iodesc *, void **, void **, time_t, void *),
    void **pkt, void **payload, void *recv_extra)
{
 ssize_t cc;
 time_t t, tmo, tlast;
 time_t tref;
 long tleft;






 tmo = MINTMO;
 tlast = 0;
 tleft = 0;
 tref = getsecs();
 t = getsecs();
 for (;;) {
  if (MAXWAIT > 0 && (getsecs() - tref) >= MAXWAIT) {
   errno = ETIMEDOUT;
   return -1;
  }
  if (tleft <= 0) {
   if (tmo >= MAXTMO) {
    errno = ETIMEDOUT;
    return -1;
   }
   cc = (*sproc)(d, sbuf, ssize);
   if (cc != -1 && cc < ssize)
    panic("sendrecv: short write! (%zd < %zd)",
        cc, ssize);

   tleft = tmo;
   tmo += MINTMO;
   if (tmo > MAXTMO)
    tmo = MAXTMO;

   if (cc == -1) {

    while ((getsecs() - t) < tmo)
     ;
    tleft = 0;
    continue;
   }

   tlast = t;
  }


  cc = (*rproc)(d, pkt, payload, tleft, recv_extra);

  if (cc != -1 || (errno != 0 && errno != ETIMEDOUT))
   return (cc);


  t = getsecs();
  tleft -= t - tlast;
  tlast = t;
 }
}
