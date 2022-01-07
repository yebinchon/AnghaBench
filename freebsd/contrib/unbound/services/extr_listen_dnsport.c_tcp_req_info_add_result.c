
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tcp_req_info {int num_done_req; struct tcp_req_done_item* done_req_list; } ;
struct tcp_req_done_item {size_t len; struct tcp_req_done_item* next; int buf; } ;


 int VERB_ALGO ;
 int free (struct tcp_req_done_item*) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 scalar_t__ malloc (int) ;
 int memdup (int *,size_t) ;
 scalar_t__ stream_wait_count ;
 int stream_wait_count_lock ;
 scalar_t__ stream_wait_max ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
tcp_req_info_add_result(struct tcp_req_info* req, uint8_t* buf, size_t len)
{
 struct tcp_req_done_item* last = ((void*)0);
 struct tcp_req_done_item* item;
 size_t space;


 space = sizeof(struct tcp_req_done_item) + len;
 lock_basic_lock(&stream_wait_count_lock);
 if(stream_wait_count + space > stream_wait_max) {
  lock_basic_unlock(&stream_wait_count_lock);
  verbose(VERB_ALGO, "drop stream reply, no space left, in stream-wait-size");
  return 0;
 }
 stream_wait_count += space;
 lock_basic_unlock(&stream_wait_count_lock);


 last = req->done_req_list;
 while(last && last->next)
  last = last->next;


 item = (struct tcp_req_done_item*)malloc(sizeof(*item));
 if(!item) {
  log_err("malloc failure, for stream result list");
  return 0;
 }
 item->next = ((void*)0);
 item->len = len;
 item->buf = memdup(buf, len);
 if(!item->buf) {
  free(item);
  log_err("malloc failure, adding reply to stream result list");
  return 0;
 }


 if(last) last->next = item;
 else req->done_req_list = item;
 req->num_done_req++;
 return 1;
}
