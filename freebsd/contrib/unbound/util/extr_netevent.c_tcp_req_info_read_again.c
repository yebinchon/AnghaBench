
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_point {int cb_arg; int (* callback ) (struct comm_point*,int ,int ,int *) ;int tcp_do_close; scalar_t__ tcp_is_reading; TYPE_1__* tcp_req_info; } ;
struct TYPE_2__ {scalar_t__ read_again; } ;


 int NETEVENT_CLOSED ;
 int comm_point_tcp_handle_read (int,struct comm_point*,int ) ;
 int comm_point_tcp_handle_write (int,struct comm_point*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_comm_point (int (*) (struct comm_point*,int ,int ,int *)) ;
 int reclaim_tcp_handler (struct comm_point*) ;
 int stub1 (struct comm_point*,int ,int ,int *) ;

__attribute__((used)) static void
tcp_req_info_read_again(int fd, struct comm_point* c)
{
 while(c->tcp_req_info->read_again) {
  int r;
  c->tcp_req_info->read_again = 0;
  if(c->tcp_is_reading)
   r = comm_point_tcp_handle_read(fd, c, 0);
  else r = comm_point_tcp_handle_write(fd, c);
  if(!r) {
   reclaim_tcp_handler(c);
   if(!c->tcp_do_close) {
    fptr_ok(fptr_whitelist_comm_point(
     c->callback));
    (void)(*c->callback)(c, c->cb_arg,
     NETEVENT_CLOSED, ((void*)0));
   }
   return;
  }
 }
}
