
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {int l_ui; } ;
typedef TYPE_1__ l_fp ;
struct TYPE_6__ {size_t ncodechars; unsigned int* codechars; struct timeval* codetimes; } ;


 scalar_t__ JAN_1970 ;
 int NCHUCHARS ;
 int TVTOTS (struct timeval*,TYPE_1__*) ;
 TYPE_2__ chudata ;
 int chufilter (TYPE_2__*,struct timeval*) ;
 scalar_t__ debug ;
 scalar_t__ doprocess ;
 int fprintf (int ,char*,unsigned int) ;
 int printf (char*,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int stderr ;

void
raw_filter(
 unsigned int c,
 struct timeval *tv
 )
{
 static struct timeval diffs[10];
 struct timeval diff;
 l_fp ts;

 if ((c & 0xf) > 9 || ((c>>4)&0xf) > 9) {
  if (debug)
      (void) fprintf(stderr,
       "character %02x failed BCD test\n", c);
  chudata.ncodechars = 0;
  return;
 }

 if (chudata.ncodechars > 0) {
  diff.tv_sec = tv->tv_sec
   - chudata.codetimes[chudata.ncodechars].tv_sec;
  diff.tv_usec = tv->tv_usec
   - chudata.codetimes[chudata.ncodechars].tv_usec;
  if (diff.tv_usec < 0) {
   diff.tv_sec--;
   diff.tv_usec += 1000000;
  }







 }

 chudata.codechars[chudata.ncodechars] = c;
 chudata.codetimes[chudata.ncodechars] = *tv;
 if (chudata.ncodechars > 0)
     diffs[chudata.ncodechars] = diff;
 if (++chudata.ncodechars == 10) {
  if (doprocess) {
   TVTOTS(&chudata.codetimes[NCHUCHARS-1], &ts);
   ts.l_ui += JAN_1970;
   chufilter(&chudata, &chudata.codetimes[NCHUCHARS-1]);
  } else {
   register int i;

   for (i = 0; i < chudata.ncodechars; i++) {
    (void) printf("%x%x\t%lu.%06lu\t%lu.%06lu\n",
           chudata.codechars[i] & 0xf,
           (chudata.codechars[i] >>4 ) & 0xf,
           chudata.codetimes[i].tv_sec,
           chudata.codetimes[i].tv_usec,
           diffs[i].tv_sec, diffs[i].tv_usec);
   }
  }
  chudata.ncodechars = 0;
 }
}
