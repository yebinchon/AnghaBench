
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct listen_port {int dummy; } ;
struct daemon {scalar_t__ listening_port; int reuseport; size_t num_ports; scalar_t__ rc_port; TYPE_1__* cfg; struct listen_port* rc_ports; struct listen_port** ports; } ;
struct TYPE_3__ {scalar_t__ port; scalar_t__ num_threads; scalar_t__ control_port; scalar_t__ remote_control_enable; scalar_t__ so_reuseport; } ;


 scalar_t__ calloc (int,int) ;
 struct listen_port* daemon_remote_open_ports (TYPE_1__*) ;
 int free (struct listen_port**) ;
 int listening_ports_free (struct listen_port*) ;
 void* listening_ports_open (TYPE_1__*,int*) ;
 int log_assert (struct daemon*) ;

int
daemon_open_shared_ports(struct daemon* daemon)
{
 log_assert(daemon);
 if(daemon->cfg->port != daemon->listening_port) {
  size_t i;
  struct listen_port* p0;
  daemon->reuseport = 0;

  if(daemon->ports != ((void*)0)) {
   for(i=0; i<daemon->num_ports; i++)
    listening_ports_free(daemon->ports[i]);
   free(daemon->ports);
   daemon->ports = ((void*)0);
  }






  p0 = listening_ports_open(daemon->cfg, &daemon->reuseport);
  if(!p0) {
   listening_ports_free(p0);
   return 0;
  }
  if(daemon->reuseport) {

   daemon->num_ports = (size_t)daemon->cfg->num_threads;
  } else {


   daemon->num_ports = 1;
  }
  if(!(daemon->ports = (struct listen_port**)calloc(
   daemon->num_ports, sizeof(*daemon->ports)))) {
   listening_ports_free(p0);
   return 0;
  }
  daemon->ports[0] = p0;
  if(daemon->reuseport) {

   for(i=1; i<daemon->num_ports; i++) {
    if(!(daemon->ports[i]=
     listening_ports_open(daemon->cfg,
      &daemon->reuseport))
     || !daemon->reuseport ) {
     for(i=0; i<daemon->num_ports; i++)
      listening_ports_free(daemon->ports[i]);
     free(daemon->ports);
     daemon->ports = ((void*)0);
     return 0;
    }
   }
  }
  daemon->listening_port = daemon->cfg->port;
 }
 if(!daemon->cfg->remote_control_enable && daemon->rc_port) {
  listening_ports_free(daemon->rc_ports);
  daemon->rc_ports = ((void*)0);
  daemon->rc_port = 0;
 }
 if(daemon->cfg->remote_control_enable &&
  daemon->cfg->control_port != daemon->rc_port) {
  listening_ports_free(daemon->rc_ports);
  if(!(daemon->rc_ports=daemon_remote_open_ports(daemon->cfg)))
   return 0;
  daemon->rc_port = daemon->cfg->control_port;
 }
 return 1;
}
