
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daemon_remote {int max_active; int use_cert; int * ctx; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
struct TYPE_2__ {struct config_strlist* first; } ;
struct config_file {TYPE_1__ control_ifs; scalar_t__ control_use_cert; int remote_control_enable; } ;


 scalar_t__ calloc (int,int) ;
 int daemon_remote_delete (struct daemon_remote*) ;
 int log_err (char*) ;
 int log_warn (char*,char*) ;
 scalar_t__ options_remote_is_address (struct config_file*) ;
 int remote_setup_ctx (struct daemon_remote*,struct config_file*) ;

struct daemon_remote*
daemon_remote_create(struct config_file* cfg)
{
 struct daemon_remote* rc = (struct daemon_remote*)calloc(1,
  sizeof(*rc));
 if(!rc) {
  log_err("out of memory in daemon_remote_create");
  return ((void*)0);
 }
 rc->max_active = 10;

 if(!cfg->remote_control_enable) {
  rc->ctx = ((void*)0);
  return rc;
 }
 if(options_remote_is_address(cfg) && cfg->control_use_cert) {
  if(!remote_setup_ctx(rc, cfg)) {
   daemon_remote_delete(rc);
   return ((void*)0);
  }
  rc->use_cert = 1;
 } else {
  struct config_strlist* p;
  rc->ctx = ((void*)0);
  rc->use_cert = 0;
  if(!options_remote_is_address(cfg))
    for(p = cfg->control_ifs.first; p; p = p->next) {
   if(p->str && p->str[0] != '/')
    log_warn("control-interface %s is not using TLS, but plain transfer, because first control-interface in config file is a local socket (starts with a /).", p->str);
  }
 }
 return rc;
}
