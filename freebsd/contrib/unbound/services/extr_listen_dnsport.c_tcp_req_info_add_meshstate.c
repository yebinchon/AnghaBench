
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_req_open_item {struct mesh_state* mesh_state; struct mesh_area* mesh; struct tcp_req_open_item* next; } ;
struct tcp_req_info {int num_open_req; struct tcp_req_open_item* open_req_list; } ;
struct mesh_state {int dummy; } ;
struct mesh_area {int dummy; } ;


 int log_assert (int ) ;
 scalar_t__ malloc (int) ;

int
tcp_req_info_add_meshstate(struct tcp_req_info* req,
 struct mesh_area* mesh, struct mesh_state* m)
{
 struct tcp_req_open_item* item;
 log_assert(req && mesh && m);
 item = (struct tcp_req_open_item*)malloc(sizeof(*item));
 if(!item) return 0;
 item->next = req->open_req_list;
 item->mesh = mesh;
 item->mesh_state = m;
 req->open_req_list = item;
 req->num_open_req++;
 return 1;
}
