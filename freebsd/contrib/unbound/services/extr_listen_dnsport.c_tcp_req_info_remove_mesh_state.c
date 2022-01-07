
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_req_open_item {struct tcp_req_open_item* next; struct mesh_state* mesh_state; } ;
struct tcp_req_info {int num_open_req; struct tcp_req_open_item* open_req_list; } ;
struct mesh_state {int dummy; } ;


 int free (struct tcp_req_open_item*) ;

void
tcp_req_info_remove_mesh_state(struct tcp_req_info* req, struct mesh_state* m)
{
 struct tcp_req_open_item* open, *prev = ((void*)0);
 if(!req || !m) return;
 open = req->open_req_list;
 while(open) {
  if(open->mesh_state == m) {
   struct tcp_req_open_item* next;
   if(prev) prev->next = open->next;
   else req->open_req_list = open->next;

   next = open->next;
   free(open);
   req->num_open_req --;


   open = next;
   continue;
  }
  prev = open;
  open = open->next;
 }
}
