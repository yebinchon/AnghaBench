
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_7__ {int sent; scalar_t__ firstrec; scalar_t__ tblock; int inode; scalar_t__ tapea; scalar_t__ count; int fd; TYPE_1__* req; } ;
struct TYPE_6__ {scalar_t__ c_type; int c_count; scalar_t__* c_addr; scalar_t__ c_tapea; } ;
struct TYPE_5__ {scalar_t__ count; } ;


 size_t SLAVES ;
 int TP_NINDIR ;
 scalar_t__ TS_BITS ;
 scalar_t__ TS_CLRI ;
 scalar_t__ TS_END ;
 scalar_t__ asize ;
 int assert (int) ;
 int atomic (int ,int ,char*,int) ;
 scalar_t__ blocksperfile ;
 scalar_t__ blocksthisvol ;
 int blockswritten ;
 int close_rewind () ;
 int curino ;
 int dumpabort (int ) ;
 int errno ;
 scalar_t__ lastspclrec ;
 int msg (char*) ;
 scalar_t__ nextblock ;
 scalar_t__ ntrec ;
 int perror (char*) ;
 int pipeout ;
 int quit (char*,int ) ;
 int read ;
 int rollforward () ;
 TYPE_3__* slaves ;
 TYPE_3__* slp ;
 TYPE_2__ spcl ;
 int startnewtape (int ) ;
 int strerror (int ) ;
 scalar_t__ tenths ;
 int timeest () ;
 size_t trecno ;
 scalar_t__ tsize ;
 int unlimited ;
 int write ;
 int writesize ;

__attribute__((used)) static void
flushtape(void)
{
 int i, blks, got;
 int64_t lastfirstrec;

 int siz = (char *)nextblock - (char *)slp->req;

 slp->req[trecno].count = 0;

 if (atomic(write, slp->fd, (char *)slp->req, siz) != siz)
  quit("error writing command pipe: %s\n", strerror(errno));
 slp->sent = 1;

 lastfirstrec = slp->firstrec;

 if (++slp >= &slaves[SLAVES])
  slp = &slaves[0];


 if (slp->sent) {
  if (atomic(read, slp->fd, (char *)&got, sizeof got)
      != sizeof got) {
   perror("  DUMP: error reading command pipe in master");
   dumpabort(0);
  }
  slp->sent = 0;


  if (got < writesize) {
   msg("End of tape detected\n");





   for (i = 0; i < SLAVES; i++) {
    if (slaves[i].sent) {
     if (atomic(read, slaves[i].fd,
         (char *)&got, sizeof got)
         != sizeof got) {
      perror("  DUMP: error reading command pipe in master");
      dumpabort(0);
     }
     slaves[i].sent = 0;
    }
   }

   close_rewind();
   rollforward();
   return;
  }
 }

 blks = 0;
 if (spcl.c_type != TS_END && spcl.c_type != TS_CLRI &&
     spcl.c_type != TS_BITS) {
  assert(spcl.c_count <= TP_NINDIR);
  for (i = 0; i < spcl.c_count; i++)
   if (spcl.c_addr[i] != 0)
    blks++;
 }
 slp->count = lastspclrec + blks + 1 - spcl.c_tapea;
 slp->tapea = spcl.c_tapea;
 slp->firstrec = lastfirstrec + ntrec;
 slp->inode = curino;
 nextblock = slp->tblock;
 trecno = 0;
 asize += tenths;
 blockswritten += ntrec;
 blocksthisvol += ntrec;
 if (!pipeout && !unlimited && (blocksperfile ?
     (blocksthisvol >= blocksperfile) : (asize > tsize))) {
  close_rewind();
  startnewtape(0);
 }
 timeest();
}
