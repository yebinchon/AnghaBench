
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 char* hostname ;
 double nrcvtimeout ;
 int nreceived ;
 double nrepeats ;
 int ntransmitted ;
 int printf (char*,...) ;
 int putchar (char) ;
 double sqrt (double) ;
 int stdout ;
 scalar_t__ timing ;
 double tmax ;
 double tmin ;
 double tsum ;
 double tsumsq ;

__attribute__((used)) static void
summary(void)
{

 (void)printf("\n--- %s ping6 statistics ---\n", hostname);
 (void)printf("%ld packets transmitted, ", ntransmitted);
 (void)printf("%ld packets received, ", nreceived);
 if (nrepeats)
  (void)printf("+%ld duplicates, ", nrepeats);
 if (ntransmitted) {
  if (nreceived > ntransmitted)
   (void)printf("-- somebody's duplicating packets!");
  else
   (void)printf("%.1f%% packet loss",
       ((((double)ntransmitted - nreceived) * 100.0) /
       ntransmitted));
 }
 if (nrcvtimeout)
  printf(", %ld packets out of wait time", nrcvtimeout);
 (void)putchar('\n');
 if (nreceived && timing) {

  double num = nreceived + nrepeats;
  double avg = tsum / num;
  double dev = sqrt(tsumsq / num - avg * avg);
  (void)printf(
      "round-trip min/avg/max/std-dev = %.3f/%.3f/%.3f/%.3f ms\n",
      tmin, avg, tmax, dev);
  (void)fflush(stdout);
 }
 (void)fflush(stdout);
}
