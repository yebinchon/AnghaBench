
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int sockaddr_u ;
struct TYPE_6__ {int l_ui; } ;
typedef TYPE_1__ l_fp ;
struct TYPE_7__ {int * fp; } ;


 scalar_t__ MJD_1900 ;
 TYPE_4__ clockstats ;
 int fflush (int *) ;
 int filegen_setup (TYPE_4__*,int) ;
 int fprintf (int *,char*,scalar_t__,int ,int ,char const*) ;
 int get_systime (TYPE_1__*) ;
 int stats_control ;
 int stoa (int *) ;
 int ulfptoa (TYPE_1__*,int) ;

void
record_clock_stats(
 sockaddr_u *addr,
 const char *text
 )
{
 l_fp now;
 u_long day;

 if (!stats_control)
  return;

 get_systime(&now);
 filegen_setup(&clockstats, now.l_ui);
 day = now.l_ui / 86400 + MJD_1900;
 now.l_ui %= 86400;
 if (clockstats.fp != ((void*)0)) {
  fprintf(clockstats.fp, "%lu %s %s %s\n", day,
      ulfptoa(&now, 3), stoa(addr), text);
  fflush(clockstats.fp);
 }
}
