
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct daemon {TYPE_2__* env; TYPE_1__* cfg; int mods; int superalloc; } ;
struct TYPE_5__ {scalar_t__ need_to_validate; int * worker; int * alloc; TYPE_1__* cfg; } ;
struct TYPE_4__ {int module_conf; } ;


 int VERB_ALGO ;
 int fatal_exit (char*) ;
 int log_edns_known_options (int ,TYPE_2__*) ;
 int modstack_setup (int *,int ,TYPE_2__*) ;

__attribute__((used)) static void daemon_setup_modules(struct daemon* daemon)
{
 daemon->env->cfg = daemon->cfg;
 daemon->env->alloc = &daemon->superalloc;
 daemon->env->worker = ((void*)0);
 daemon->env->need_to_validate = 0;
 if(!modstack_setup(&daemon->mods, daemon->cfg->module_conf,
  daemon->env)) {
  fatal_exit("failed to setup modules");
 }
 log_edns_known_options(VERB_ALGO, daemon->env);
}
