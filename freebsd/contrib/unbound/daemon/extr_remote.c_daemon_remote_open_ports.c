
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct listen_port {int dummy; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
struct TYPE_2__ {struct config_strlist* first; } ;
struct config_file {scalar_t__ control_port; scalar_t__ do_ip4; scalar_t__ do_ip6; TYPE_1__ control_ifs; scalar_t__ remote_control_enable; } ;


 int add_open (char*,scalar_t__,struct listen_port**,int,struct config_file*) ;
 int listening_ports_free (struct listen_port*) ;
 int log_assert (int) ;

struct listen_port* daemon_remote_open_ports(struct config_file* cfg)
{
 struct listen_port* l = ((void*)0);
 log_assert(cfg->remote_control_enable && cfg->control_port);
 if(cfg->control_ifs.first) {
  struct config_strlist* p;
  for(p = cfg->control_ifs.first; p; p = p->next) {
   if(!add_open(p->str, cfg->control_port, &l, 1, cfg)) {
    listening_ports_free(l);
    return ((void*)0);
   }
  }
 } else {

  if(cfg->do_ip6 &&
   !add_open("::1", cfg->control_port, &l, 0, cfg)) {
   listening_ports_free(l);
   return ((void*)0);
  }
  if(cfg->do_ip4 &&
   !add_open("127.0.0.1", cfg->control_port, &l, 1, cfg)) {
   listening_ports_free(l);
   return ((void*)0);
  }
 }
 return l;
}
