
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; } ;
struct mesh_state {int cb_list; struct mesh_reply* reply_list; TYPE_2__ super_set; } ;
struct TYPE_3__ {struct comm_point* c; } ;
struct mesh_reply {struct mesh_reply* next; TYPE_1__ query_reply; } ;
struct mesh_area {scalar_t__ num_reply_states; int num_detached_states; int num_reply_addrs; } ;
struct comm_point {int dummy; } ;


 int log_assert (int) ;

void mesh_state_remove_reply(struct mesh_area* mesh, struct mesh_state* m,
 struct comm_point* cp)
{
 struct mesh_reply* n, *prev = ((void*)0);
 n = m->reply_list;


 if(!n) return;
 while(n) {
  if(n->query_reply.c == cp) {

   if(prev) prev->next = n->next;
   else m->reply_list = n->next;

   mesh->num_reply_addrs--;


   n = n->next;
   continue;
  }
  prev = n;
  n = n->next;
 }

 if(!m->reply_list && !m->cb_list
  && m->super_set.count == 0) {
  mesh->num_detached_states++;
 }

 if(!m->reply_list && !m->cb_list) {
  log_assert(mesh->num_reply_states > 0);
  mesh->num_reply_states--;
 }
}
