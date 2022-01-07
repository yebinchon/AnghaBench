
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiting_tcp {scalar_t__ timer; } ;


 int comm_timer_delete (scalar_t__) ;
 int free (struct waiting_tcp*) ;

__attribute__((used)) static void
waiting_tcp_delete(struct waiting_tcp* w)
{
 if(!w) return;
 if(w->timer)
  comm_timer_delete(w->timer);
 free(w);
}
