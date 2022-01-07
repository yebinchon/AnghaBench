
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tube_res_list {size_t len; struct tube_res_list* next; int * buf; } ;
struct tube {int res_com; struct tube_res_list* res_last; struct tube_res_list* res_list; } ;


 int comm_point_start_listening (int ,int,int) ;
 int free (int *) ;
 int log_err (char*) ;
 scalar_t__ malloc (int) ;

int tube_queue_item(struct tube* tube, uint8_t* msg, size_t len)
{
 struct tube_res_list* item;
 if(!tube || !tube->res_com) return 0;
 item = (struct tube_res_list*)malloc(sizeof(*item));
 if(!item) {
  free(msg);
  log_err("out of memory for async answer");
  return 0;
 }
 item->buf = msg;
 item->len = len;
 item->next = ((void*)0);

 if(tube->res_last)
  tube->res_last->next = item;
 else tube->res_list = item;
 tube->res_last = item;
 if(tube->res_list == tube->res_last) {

  comm_point_start_listening(tube->res_com, -1, -1);
 }
 return 1;
}
