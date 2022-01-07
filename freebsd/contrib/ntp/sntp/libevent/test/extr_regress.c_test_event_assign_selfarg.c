
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct basic_test_data {struct event_base* base; } ;


 int EV_READ ;
 int event_active (struct event*,int ,int) ;
 int event_assign (struct event*,struct event_base*,int,int ,int ,int ) ;
 int event_base_dispatch (struct event_base*) ;
 int event_self_cbarg () ;
 int event_selfarg_cb ;

__attribute__((used)) static void
test_event_assign_selfarg(void *ptr)
{
 struct basic_test_data *data = ptr;
 struct event_base *base = data->base;
 struct event ev;

 event_assign(&ev, base, -1, EV_READ, event_selfarg_cb,
                     event_self_cbarg());
 event_active(&ev, EV_READ, 1);
 event_base_dispatch(base);
}
