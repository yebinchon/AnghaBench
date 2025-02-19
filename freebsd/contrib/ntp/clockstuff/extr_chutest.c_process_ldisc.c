
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct chucode {int* codechars; TYPE_2__* codetimes; } ;
struct TYPE_4__ {int l_ui; } ;
typedef TYPE_1__ l_fp ;
struct TYPE_5__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;


 scalar_t__ JAN_1970 ;
 int NCHUCHARS ;
 int TVTOTS (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ doprocess ;
 int error (char*,char*,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 char* progname ;
 int read (int,char*,int) ;
 int stderr ;

int
process_ldisc(
 int s
 )
{
 struct chucode chu;
 int n;
 register int i;
 struct timeval diff;
 l_fp ts;
 void chufilter();

 while ((n = read(s, (char *)&chu, sizeof chu)) > 0) {
  if (n != sizeof chu) {
   (void) fprintf(stderr, "Expected %d, got %d\n",
           sizeof chu, n);
   continue;
  }

  if (doprocess) {
   TVTOTS(&chu.codetimes[NCHUCHARS-1], &ts);
   ts.l_ui += JAN_1970;
   chufilter(&chu, &ts);
  } else {
   for (i = 0; i < NCHUCHARS; i++) {
    if (i == 0)
        diff.tv_sec = diff.tv_usec = 0;
    else {
     diff.tv_sec = chu.codetimes[i].tv_sec
      - chu.codetimes[i-1].tv_sec;
     diff.tv_usec = chu.codetimes[i].tv_usec
      - chu.codetimes[i-1].tv_usec;
     if (diff.tv_usec < 0) {
      diff.tv_sec--;
      diff.tv_usec += 1000000;
     }
    }
    (void) printf("%x%x\t%lu.%06lu\t%lu.%06lu\n",
           chu.codechars[i] & 0xf, (chu.codechars[i]>>4)&0xf,
           chu.codetimes[i].tv_sec, chu.codetimes[i].tv_usec,
           diff.tv_sec, diff.tv_usec);
   }
  }
 }
 if (n == 0) {
  (void) fprintf(stderr, "%s: zero returned on read\n", progname);
  exit(1);
 } else
     error("read()", "", "");
}
