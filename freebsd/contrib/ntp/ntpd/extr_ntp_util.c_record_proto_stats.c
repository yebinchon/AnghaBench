
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_6__ {int l_ui; } ;
typedef TYPE_1__ l_fp ;
struct TYPE_7__ {int * fp; } ;


 scalar_t__ MJD_1900 ;
 int fflush (int *) ;
 int filegen_setup (TYPE_3__*,int) ;
 int fprintf (int *,char*,scalar_t__,int ,char*) ;
 int get_systime (TYPE_1__*) ;
 TYPE_3__ protostats ;
 int stats_control ;
 int ulfptoa (TYPE_1__*,int) ;

void
record_proto_stats(
 char *str
 )
{
 l_fp now;
 u_long day;

 if (!stats_control)
  return;

 get_systime(&now);
 filegen_setup(&protostats, now.l_ui);
 day = now.l_ui / 86400 + MJD_1900;
 now.l_ui %= 86400;
 if (protostats.fp != ((void*)0)) {
  fprintf(protostats.fp, "%lu %s %s\n", day,
      ulfptoa(&now, 3), str);
  fflush(protostats.fp);
 }
}
