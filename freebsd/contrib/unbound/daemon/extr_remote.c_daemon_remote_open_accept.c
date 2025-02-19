
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int dummy; } ;
struct listen_port {int fd; struct listen_port* next; } ;
struct daemon_remote {struct worker* worker; } ;


 int accept_open (struct daemon_remote*,int ) ;
 int log_err (char*) ;

int daemon_remote_open_accept(struct daemon_remote* rc,
 struct listen_port* ports, struct worker* worker)
{
 struct listen_port* p;
 rc->worker = worker;
 for(p = ports; p; p = p->next) {
  if(!accept_open(rc, p->fd)) {
   log_err("could not create accept comm point");
   return 0;
  }
 }
 return 1;
}
