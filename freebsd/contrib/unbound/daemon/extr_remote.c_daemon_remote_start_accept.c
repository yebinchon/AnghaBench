
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listen_list {int com; struct listen_list* next; } ;
struct daemon_remote {struct listen_list* accept_list; } ;


 int comm_point_start_listening (int ,int,int) ;

void daemon_remote_start_accept(struct daemon_remote* rc)
{
 struct listen_list* p;
 for(p=rc->accept_list; p; p=p->next) {
  comm_point_start_listening(p->com, -1, -1);
 }
}
