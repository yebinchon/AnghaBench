
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct listen_list {TYPE_2__* com; struct listen_list* next; } ;
struct daemon_remote {TYPE_1__* worker; struct listen_list* accept_list; } ;
struct TYPE_4__ {int do_not_close; } ;
struct TYPE_3__ {int base; } ;


 TYPE_2__* comm_point_create_raw (int ,int,int ,int *,struct daemon_remote*) ;
 int log_err (char*) ;
 scalar_t__ malloc (int) ;
 int remote_accept_callback ;

__attribute__((used)) static int
accept_open(struct daemon_remote* rc, int fd)
{
 struct listen_list* n = (struct listen_list*)malloc(sizeof(*n));
 if(!n) {
  log_err("out of memory");
  return 0;
 }
 n->next = rc->accept_list;
 rc->accept_list = n;

 n->com = comm_point_create_raw(rc->worker->base, fd, 0,
  &remote_accept_callback, rc);
 if(!n->com)
  return 0;

 n->com->do_not_close = 1;
 return 1;
}
