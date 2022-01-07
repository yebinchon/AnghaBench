
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rate ;
typedef int off_t ;
typedef int caddr_t ;
struct TYPE_2__ {scalar_t__ n_value; } ;


 int LOG_INFO ;
 int SIGALRM ;
 long default_rate ;
 int kmem ;
 long lseek (int ,int ,int ) ;
 int msyslog (int ,char*,long,long) ;
 TYPE_1__* nl ;
 int printf (char*,long,long) ;
 long sigblock (int ) ;
 int sigmask (int ) ;
 int sigsetmask (long) ;
 int sysdebug ;
 long tick_rate ;
 int verbose ;
 int write (int ,int ,int) ;

int
SetClockRate(
 long rate
 )
{
 long mask;

 if (lseek(kmem, (off_t)nl[0].n_value, 0) == -1L)
     return (-1);

 mask = sigblock(sigmask(SIGALRM));

 if (write(kmem, (caddr_t)&rate, sizeof(rate)) != sizeof(rate)) {
  sigsetmask(mask);
  return (-1);
 }

 sigsetmask(mask);

 if (rate != default_rate) {
  if (verbose > 3) {
   printf("adjtimed: clock rate (%lu) %ldus/s\n", rate,
          (rate - default_rate) * tick_rate);
  }
  if (sysdebug > 3) {
   msyslog(LOG_INFO, "clock rate (%lu) %ldus/s", rate,
    (rate - default_rate) * tick_rate);
  }
 }

 return (0);
}
