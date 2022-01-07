
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_state {int c; scalar_t__ ssl; struct rc_state* next; } ;
struct daemon_remote {int * worker; scalar_t__ active; struct rc_state* busy_list; int * accept_list; } ;


 int SSL_free (scalar_t__) ;
 int comm_point_delete (int ) ;
 int free (struct rc_state*) ;
 int listen_list_delete (int *) ;

void daemon_remote_clear(struct daemon_remote* rc)
{
 struct rc_state* p, *np;
 if(!rc) return;

 listen_list_delete(rc->accept_list);
 rc->accept_list = ((void*)0);

 p = rc->busy_list;
 while(p) {
  np = p->next;
  if(p->ssl)
   SSL_free(p->ssl);
  comm_point_delete(p->c);
  free(p);
  p = np;
 }
 rc->busy_list = ((void*)0);
 rc->active = 0;
 rc->worker = ((void*)0);
}
