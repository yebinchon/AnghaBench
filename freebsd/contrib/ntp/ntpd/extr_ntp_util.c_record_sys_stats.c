
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
 scalar_t__ current_time ;
 int fflush (int *) ;
 int filegen_setup (TYPE_3__*,int) ;
 int fprintf (int *,char*,scalar_t__,int ,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int get_systime (TYPE_1__*) ;
 int proto_clr_stats () ;
 int stats_control ;
 int sys_badauth ;
 int sys_badlength ;
 int sys_declined ;
 int sys_kodsent ;
 int sys_limitrejected ;
 int sys_newversion ;
 int sys_oldversion ;
 int sys_processed ;
 int sys_received ;
 int sys_restricted ;
 scalar_t__ sys_stattime ;
 TYPE_3__ sysstats ;
 int ulfptoa (TYPE_1__*,int) ;

void
record_sys_stats(void)
{
 l_fp now;
 u_long day;

 if (!stats_control)
  return;

 get_systime(&now);
 filegen_setup(&sysstats, now.l_ui);
 day = now.l_ui / 86400 + MJD_1900;
 now.l_ui %= 86400;
 if (sysstats.fp != ((void*)0)) {
  fprintf(sysstats.fp,
      "%lu %s %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu\n",
      day, ulfptoa(&now, 3), current_time - sys_stattime,
      sys_received, sys_processed, sys_newversion,
      sys_oldversion, sys_restricted, sys_badlength,
      sys_badauth, sys_declined, sys_limitrejected,
      sys_kodsent);
  fflush(sysstats.fp);
  proto_clr_stats();
 }
}
