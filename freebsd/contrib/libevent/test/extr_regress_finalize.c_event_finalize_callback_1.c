
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;



__attribute__((used)) static void
event_finalize_callback_1(struct event *ev, void *arg)
{
 int *int_arg = arg;
        *int_arg += 100;
 (void)ev;
}
