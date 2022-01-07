
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int SIGINT ;
 int SIG_IGN ;
 int exit (int) ;
 int fflush (int ) ;
 char* hostname ;
 double nrcvtimeout ;
 int nreceived ;
 double nrepeats ;
 int ntransmitted ;
 int printf (char*,...) ;
 int putchar (char) ;
 int signal (int ,int ) ;
 double sqrt (double) ;
 int stdout ;
 scalar_t__ timing ;
 double tmax ;
 double tmin ;
 double tsum ;
 double tsumsq ;

__attribute__((used)) static void
finish(void)
{

 (void)signal(SIGINT, SIG_IGN);
 (void)signal(SIGALRM, SIG_IGN);
 (void)putchar('\n');
 (void)fflush(stdout);
 (void)printf("--- %s ping statistics ---\n", hostname);
 (void)printf("%ld packets transmitted, ", ntransmitted);
 (void)printf("%ld packets received, ", nreceived);
 if (nrepeats)
  (void)printf("+%ld duplicates, ", nrepeats);
 if (ntransmitted) {
  if (nreceived > ntransmitted)
   (void)printf("-- somebody's printing up packets!");
  else
   (void)printf("%.1f%% packet loss",
       ((ntransmitted - nreceived) * 100.0) /
       ntransmitted);
 }
 if (nrcvtimeout)
  (void)printf(", %ld packets out of wait time", nrcvtimeout);
 (void)putchar('\n');
 if (nreceived && timing) {
  double n = nreceived + nrepeats;
  double avg = tsum / n;
  double vari = tsumsq / n - avg * avg;
  (void)printf(
      "round-trip min/avg/max/stddev = %.3f/%.3f/%.3f/%.3f ms\n",
      tmin, avg, tmax, sqrt(vari));
 }

 if (nreceived)
  exit(0);
 else
  exit(2);
}
