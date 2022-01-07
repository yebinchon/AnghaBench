
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* cfg; scalar_t__* modinfo; TYPE_1__* mesh; } ;
struct worker {TYPE_2__ env; } ;
struct val_env {int date_override; } ;
struct TYPE_6__ {int val_date_override; } ;
struct TYPE_4__ {int mods; } ;
typedef int RES ;


 int config_set_option (TYPE_3__*,char*,char*) ;
 int find_arg2 (int *,char*,char**) ;
 int modstack_find (int *,char*) ;
 int send_ok (int *) ;
 int ssl_printf (int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
do_set_option(RES* ssl, struct worker* worker, char* arg)
{
 char* arg2;
 if(!find_arg2(ssl, arg, &arg2))
  return;
 if(!config_set_option(worker->env.cfg, arg, arg2)) {
  (void)ssl_printf(ssl, "error setting option\n");
  return;
 }

 if(strcmp(arg, "val-override-date:") == 0) {
  int m = modstack_find(&worker->env.mesh->mods, "validator");
  struct val_env* val_env = ((void*)0);
  if(m != -1) val_env = (struct val_env*)worker->env.modinfo[m];
  if(val_env)
   val_env->date_override = worker->env.cfg->val_date_override;
 }
 send_ok(ssl);
}
