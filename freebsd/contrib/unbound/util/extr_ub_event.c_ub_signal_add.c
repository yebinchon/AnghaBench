
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event {int dummy; } ;
struct timeval {int dummy; } ;


 int AS_EVENT (struct ub_event*) ;
 int signal_add (int ,struct timeval*) ;

int
ub_signal_add(struct ub_event* ev, struct timeval* tv)
{
 return signal_add(AS_EVENT(ev), tv);
}
