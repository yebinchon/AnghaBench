
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct daemon {int use_response_ip; TYPE_2__** workers; scalar_t__ need_to_exit; int * ports; TYPE_4__* cfg; int mods; TYPE_1__* env; int respip_set; int views; int local_zones; int dnscenv; int tcl; int acl; } ;
struct TYPE_16__ {scalar_t__ dnscrypt; } ;
struct TYPE_15__ {scalar_t__ need_to_exit; } ;
struct TYPE_14__ {int auth_zones; } ;


 int PACKAGE_STRING ;
 int acl_list_apply_cfg (int ,TYPE_4__*,int ) ;
 int auth_zones_apply_cfg (int ,TYPE_4__*,int) ;
 int daemon_create_workers (struct daemon*) ;
 int daemon_setup_modules (struct daemon*) ;
 int daemon_start_others (struct daemon*) ;
 int daemon_stop_others (struct daemon*) ;
 int dnsc_apply_cfg (int ,TYPE_4__*) ;
 int dnsc_create () ;
 int fatal_exit (char*) ;
 int local_zones_apply_cfg (int ,TYPE_4__*) ;
 int local_zones_create () ;
 int log_assert (struct daemon*) ;
 int log_info (char*,int ) ;
 int log_warn (char*) ;
 scalar_t__ modstack_find (int *,char*) ;
 int respip_global_apply_cfg (int ,TYPE_4__*) ;
 int respip_set_create () ;
 int respip_set_is_empty (int ) ;
 int respip_views_apply_cfg (int ,TYPE_4__*,int*) ;
 int sd_notify (int ,char*) ;
 int shm_main_init (struct daemon*) ;
 int shm_main_shutdown (struct daemon*) ;
 int signal_handling_playback (TYPE_2__*) ;
 int tcl_list_apply_cfg (int ,TYPE_4__*) ;
 int views_apply_cfg (int ,TYPE_4__*) ;
 int views_create () ;
 int worker_init (TYPE_2__*,TYPE_4__*,int ,int) ;
 int worker_work (TYPE_2__*) ;

void
daemon_fork(struct daemon* daemon)
{
 int have_view_respip_cfg = 0;

 log_assert(daemon);
 if(!(daemon->views = views_create()))
  fatal_exit("Could not create views: out of memory");

 if(!views_apply_cfg(daemon->views, daemon->cfg))
  fatal_exit("Could not set up views");

 if(!acl_list_apply_cfg(daemon->acl, daemon->cfg, daemon->views))
  fatal_exit("Could not setup access control list");
 if(!tcl_list_apply_cfg(daemon->tcl, daemon->cfg))
  fatal_exit("Could not setup TCP connection limits");
 if(daemon->cfg->dnscrypt) {






  fatal_exit("dnscrypt enabled in config but unbound was not built with "
       "dnscrypt support");

 }

 if(!(daemon->local_zones = local_zones_create()))
  fatal_exit("Could not create local zones: out of memory");
 if(!local_zones_apply_cfg(daemon->local_zones, daemon->cfg))
  fatal_exit("Could not set up local zones");


 if(!(daemon->respip_set = respip_set_create()))
  fatal_exit("Could not create response IP set");
 if(!respip_global_apply_cfg(daemon->respip_set, daemon->cfg))
  fatal_exit("Could not set up response IP set");
 if(!respip_views_apply_cfg(daemon->views, daemon->cfg,
  &have_view_respip_cfg))
  fatal_exit("Could not set up per-view response IP sets");
 daemon->use_response_ip = !respip_set_is_empty(daemon->respip_set) ||
  have_view_respip_cfg;


 if(!auth_zones_apply_cfg(daemon->env->auth_zones, daemon->cfg, 1))
  fatal_exit("auth_zones could not be setup");


 daemon_setup_modules(daemon);




 if(daemon->use_response_ip &&
  modstack_find(&daemon->mods, "respip") < 0)
  fatal_exit("response-ip options require respip module");




 daemon_create_workers(daemon);
 daemon_start_others(daemon);






 if(!worker_init(daemon->workers[0], daemon->cfg, daemon->ports[0], 1))
  fatal_exit("Could not initialize main thread");

 signal_handling_playback(daemon->workers[0]);

 if (!shm_main_init(daemon))
  log_warn("SHM has failed");





 log_info("start of service (%s).", PACKAGE_STRING);
 worker_work(daemon->workers[0]);






 log_info("service stopped (%s).", PACKAGE_STRING);


 daemon_stop_others(daemon);


 shm_main_shutdown(daemon);

 daemon->need_to_exit = daemon->workers[0]->need_to_exit;
}
