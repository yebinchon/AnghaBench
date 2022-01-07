
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiting_tcp {int pkt_len; scalar_t__ timer; } ;


 scalar_t__ comm_timer_get_mem (scalar_t__) ;

__attribute__((used)) static size_t
waiting_tcp_get_mem(struct waiting_tcp* w)
{
 size_t s;
 if(!w) return 0;
 s = sizeof(*w) + w->pkt_len;
 if(w->timer)
  s += comm_timer_get_mem(w->timer);
 return s;
}
