
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int osm_subn_opt_t ;
struct TYPE_6__ {int force_heavy_sweep; } ;
struct TYPE_7__ {int log; int console; TYPE_1__ subn; } ;
typedef TYPE_2__ osm_opensm_t ;


 int TRUE ;
 int cl_thread_suspend (int) ;
 scalar_t__ is_console_enabled (int *) ;
 scalar_t__ osm_console (TYPE_2__*) ;
 int osm_console_exit (int *,int *) ;
 int osm_console_init (int *,int *,int *) ;
 int osm_exit_flag ;
 scalar_t__ osm_hup_flag ;
 int osm_log_reopen_file (int *) ;
 int osm_opensm_sweep (TYPE_2__*) ;
 scalar_t__ osm_usr1_flag ;

int osm_manager_loop(osm_subn_opt_t * p_opt, osm_opensm_t * p_osm)
{
 int console_init_flag = 0;

 if (is_console_enabled(p_opt)) {
  if (!osm_console_init(p_opt, &p_osm->console, &p_osm->log))
   console_init_flag = 1;
 }




 while (!osm_exit_flag) {
  if (console_init_flag) {
   if (osm_console(p_osm))
    console_init_flag = 0;
  } else
   cl_thread_suspend(10000);

  if (osm_usr1_flag) {
   osm_usr1_flag = 0;
   osm_log_reopen_file(&(p_osm->log));
  }
  if (osm_hup_flag) {
   osm_hup_flag = 0;

   p_osm->subn.force_heavy_sweep = TRUE;
   osm_opensm_sweep(p_osm);
  }
 }
 if (is_console_enabled(p_opt))
  osm_console_exit(&p_osm->console, &p_osm->log);
 return 0;
}
