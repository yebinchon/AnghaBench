
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_req_open_item {struct tcp_req_open_item* buf; scalar_t__ len; struct tcp_req_open_item* next; int mesh_state; int mesh; } ;
struct tcp_req_info {scalar_t__ read_is_closed; scalar_t__ num_done_req; struct tcp_req_open_item* done_req_list; scalar_t__ num_open_req; struct tcp_req_open_item* open_req_list; int cp; } ;
struct tcp_req_done_item {struct tcp_req_done_item* buf; scalar_t__ len; struct tcp_req_done_item* next; int mesh_state; int mesh; } ;


 int free (struct tcp_req_open_item*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int mesh_state_remove_reply (int ,int ,int ) ;
 int stream_wait_count ;
 int stream_wait_count_lock ;

void tcp_req_info_clear(struct tcp_req_info* req)
{
 struct tcp_req_open_item* open, *nopen;
 struct tcp_req_done_item* item, *nitem;
 if(!req) return;


 open = req->open_req_list;
 while(open) {
  nopen = open->next;
  mesh_state_remove_reply(open->mesh, open->mesh_state, req->cp);
  free(open);
  open = nopen;
 }
 req->open_req_list = ((void*)0);
 req->num_open_req = 0;


 item = req->done_req_list;
 while(item) {
  nitem = item->next;
  lock_basic_lock(&stream_wait_count_lock);
  stream_wait_count -= (sizeof(struct tcp_req_done_item)
   +item->len);
  lock_basic_unlock(&stream_wait_count_lock);
  free(item->buf);
  free(item);
  item = nitem;
 }
 req->done_req_list = ((void*)0);
 req->num_done_req = 0;
 req->read_is_closed = 0;
}
