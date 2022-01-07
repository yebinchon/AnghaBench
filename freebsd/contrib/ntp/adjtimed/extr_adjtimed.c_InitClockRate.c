
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ n_type; } ;


 int DEFAULT_RATE ;
 int GetClockRate () ;
 int LOG_ERR ;
 int MILLION ;
 int O_RDWR ;
 int TICK_ADJ ;
 int UNKNOWN_RATE ;
 int default_rate ;
 int fprintf (int ,char*,int,int,int) ;
 int fputs (char*,int ) ;
 int kmem ;
 int msyslog (int ,char*) ;
 TYPE_1__* nl ;
 int nlist (char*,TYPE_1__*) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int slew_rate ;
 int stderr ;
 int tick_rate ;

int
InitClockRate(void)
{
 if ((kmem = open("/dev/kmem", O_RDWR)) == -1) {
  msyslog(LOG_ERR, "open(/dev/kmem): %m");
  perror("adjtimed: open(/dev/kmem)");
  return (-1);
 }

 nlist("/hp-ux", nl);

 if (nl[0].n_type == 0) {
  fputs("adjtimed: /hp-ux has no symbol table\n", stderr);
  msyslog(LOG_ERR, "/hp-ux has no symbol table");
  return (-1);
 }



 default_rate = GetClockRate();
 if (default_rate == UNKNOWN_RATE) default_rate = DEFAULT_RATE;
 tick_rate = (MILLION / default_rate);
 slew_rate = TICK_ADJ * tick_rate;
 fprintf(stderr,"default_rate=%ld, tick_rate=%ld, slew_rate=%ld\n",default_rate,tick_rate,slew_rate);

 return (0);
}
