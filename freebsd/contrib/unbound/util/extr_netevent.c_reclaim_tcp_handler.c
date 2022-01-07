
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_point {scalar_t__ type; TYPE_1__* tcp_parent; struct comm_point* tcp_free; int * ssl; } ;
struct TYPE_2__ {struct comm_point* tcp_free; int cur_tcp_count; } ;


 int SSL_free (int *) ;
 int SSL_shutdown (int *) ;
 int comm_point_close (struct comm_point*) ;
 int comm_point_start_listening (TYPE_1__*,int,int) ;
 scalar_t__ comm_tcp ;
 int log_assert (int) ;

__attribute__((used)) static void
reclaim_tcp_handler(struct comm_point* c)
{
 log_assert(c->type == comm_tcp);
 if(c->ssl) {





 }
 comm_point_close(c);
 if(c->tcp_parent) {
  c->tcp_parent->cur_tcp_count--;
  c->tcp_free = c->tcp_parent->tcp_free;
  c->tcp_parent->tcp_free = c;
  if(!c->tcp_free) {

   comm_point_start_listening(c->tcp_parent, -1, -1);
  }
 }
}
