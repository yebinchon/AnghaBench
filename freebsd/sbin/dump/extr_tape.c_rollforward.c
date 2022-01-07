
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union u_spcl {int dummy; } u_spcl ;
struct slave {int sent; int fd; scalar_t__* tblock; struct req* req; void* tapea; } ;
struct req {scalar_t__ count; scalar_t__ dblk; } ;
typedef void* int64_t ;
struct TYPE_2__ {void* c_tapea; } ;


 int DEV_BSIZE ;
 size_t SLAVES ;
 int TP_BSIZE ;
 int atomic (int ,int ,char*,int) ;
 int dumpabort (int ) ;
 void* lastspclrec ;
 scalar_t__* nextblock ;
 int perror (char*) ;
 int quit (char*) ;
 int read ;
 struct slave* slaves ;
 struct slave* slp ;
 TYPE_1__ spcl ;
 int startnewtape (int ) ;
 int trecno ;
 int write ;
 int writesize ;

void
rollforward(void)
{
 struct req *p, *q, *prev;
 struct slave *tslp;
 int i, size, got;
 int64_t savedtapea;
 union u_spcl *ntb, *otb;
 tslp = &slaves[SLAVES];
 ntb = (union u_spcl *)tslp->tblock[1];







 for (i = 0; i < SLAVES; i++) {
  q = &tslp->req[1];
  otb = (union u_spcl *)slp->tblock;





  prev = ((void*)0);
  for (p = slp->req; p->count > 0; p += p->count) {
   *q = *p;
   if (p->dblk == 0)
    *ntb++ = *otb++;
   prev = q;
   q += q->count;
  }
  if (prev == ((void*)0))
   quit("rollforward: protocol botch");
  if (prev->dblk != 0)
   prev->count -= 1;
  else
   ntb--;
  q -= 1;
  q->count = 0;
  q = &tslp->req[0];
  if (i == 0) {
   q->dblk = 0;
   q->count = 1;
   trecno = 0;
   nextblock = tslp->tblock;
   savedtapea = spcl.c_tapea;
   spcl.c_tapea = slp->tapea;
   startnewtape(0);
   spcl.c_tapea = savedtapea;
   lastspclrec = savedtapea - 1;
  }
  size = (char *)ntb - (char *)q;
  if (atomic(write, slp->fd, (char *)q, size) != size) {
   perror("  DUMP: error writing command pipe");
   dumpabort(0);
  }
  slp->sent = 1;
  if (++slp >= &slaves[SLAVES])
   slp = &slaves[0];

  q->count = 1;

  if (prev->dblk != 0) {





   q->dblk = prev->dblk +
    prev->count * (TP_BSIZE / DEV_BSIZE);
   ntb = (union u_spcl *)tslp->tblock;
  } else {




   q->dblk = 0;
   *((union u_spcl *)tslp->tblock) = *ntb;
   ntb = (union u_spcl *)tslp->tblock[1];
  }
 }
 slp->req[0] = *q;
 nextblock = slp->tblock;
 if (q->dblk == 0)
  nextblock++;
 trecno = 1;





 if (slp->sent) {
  if (atomic(read, slp->fd, (char *)&got, sizeof got)
      != sizeof got) {
   perror("  DUMP: error reading command pipe in master");
   dumpabort(0);
  }
  slp->sent = 0;

  if (got != writesize) {
   quit("EOT detected at start of the tape!\n");
  }
 }
}
