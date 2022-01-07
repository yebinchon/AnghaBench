
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_req_info {scalar_t__ num_done_req; struct tcp_req_done_item* done_req_list; } ;
struct tcp_req_done_item {struct tcp_req_done_item* next; scalar_t__ len; } ;


 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_assert (int ) ;
 int stream_wait_count ;
 int stream_wait_count_lock ;

__attribute__((used)) static struct tcp_req_done_item*
tcp_req_info_pop_done(struct tcp_req_info* req)
{
 struct tcp_req_done_item* item;
 log_assert(req->num_done_req > 0 && req->done_req_list);
 item = req->done_req_list;
 lock_basic_lock(&stream_wait_count_lock);
 stream_wait_count -= (sizeof(struct tcp_req_done_item)+item->len);
 lock_basic_unlock(&stream_wait_count_lock);
 req->done_req_list = req->done_req_list->next;
 req->num_done_req --;
 return item;
}
