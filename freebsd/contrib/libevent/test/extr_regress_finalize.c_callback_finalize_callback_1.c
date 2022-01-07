
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;



__attribute__((used)) static void
callback_finalize_callback_1(struct event_callback *evcb, void *arg)
{
 int *int_arg = arg;
        *int_arg += 100;
 (void)evcb;
}
