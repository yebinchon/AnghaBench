
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct req {int dummy; } ;
struct TYPE_3__ {char** tblock; int count; scalar_t__ firstrec; scalar_t__ tapea; struct req* req; } ;


 int SLAVES ;
 int TP_BSIZE ;
 scalar_t__ blocksperfile ;
 scalar_t__ cartridge ;
 int density ;
 int getpagesize () ;
 scalar_t__ malloc (unsigned int) ;
 char** nextblock ;
 int ntrec ;
 int reqsiz ;
 TYPE_1__* slaves ;
 TYPE_1__* slp ;
 int tenths ;
 int unlimited ;
 int writesize ;

int
alloctape(void)
{
 int pgoff = getpagesize() - 1;
 char *buf;
 int i;

 writesize = ntrec * TP_BSIZE;
 reqsiz = (ntrec + 1) * sizeof(struct req);






 if (blocksperfile == 0 && !unlimited)
  tenths = writesize / density +
      (cartridge ? 16 : density == 625 ? 5 : 8);





 for (i = 0; i <= SLAVES; i++) {
  buf = (char *)
      malloc((unsigned)(reqsiz + writesize + pgoff + TP_BSIZE));
  if (buf == ((void*)0))
   return(0);
  slaves[i].tblock = (char (*)[TP_BSIZE])
      (((long)&buf[ntrec + 1] + pgoff) &~ pgoff);
  slaves[i].req = (struct req *)slaves[i].tblock - ntrec - 1;
 }
 slp = &slaves[0];
 slp->count = 1;
 slp->tapea = 0;
 slp->firstrec = 0;
 nextblock = slp->tblock;
 return(1);
}
