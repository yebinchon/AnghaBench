
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending {int pkt_len; int timer; } ;


 int comm_timer_get_mem (int ) ;

__attribute__((used)) static size_t
waiting_udp_get_mem(struct pending* w)
{
 size_t s;
 s = sizeof(*w) + comm_timer_get_mem(w->timer) + w->pkt_len;
 return s;
}
