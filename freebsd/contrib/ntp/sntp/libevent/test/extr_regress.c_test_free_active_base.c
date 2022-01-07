
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct basic_test_data {int * pair; } ;


 int EV_READ ;
 int dummy_read_cb ;
 int event_active (struct event*,int ,int) ;
 int event_add (struct event*,int *) ;
 int event_assign (struct event*,struct event_base*,int ,int ,int ,int *) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_init () ;
 int tt_assert (struct event_base*) ;
 int tt_fail_msg (char*) ;

__attribute__((used)) static void
test_free_active_base(void *ptr)
{
 struct basic_test_data *data = ptr;
 struct event_base *base1;
 struct event ev1;

 base1 = event_init();
 if (base1) {
  event_assign(&ev1, base1, data->pair[1], EV_READ,
        dummy_read_cb, ((void*)0));
  event_add(&ev1, ((void*)0));
  event_base_free(base1);
 } else {
  tt_fail_msg("failed to create event_base for test");
 }

 base1 = event_init();
 tt_assert(base1);
 event_assign(&ev1, base1, 0, 0, dummy_read_cb, ((void*)0));
 event_active(&ev1, EV_READ, 1);
 event_base_free(base1);
end:
 ;
}
