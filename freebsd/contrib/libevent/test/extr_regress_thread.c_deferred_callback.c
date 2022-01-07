
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;


 int SLEEP_MS (int) ;
 int callback_count ;

__attribute__((used)) static void
deferred_callback(struct event_callback *cb, void *arg)
{
 SLEEP_MS(1);
 callback_count += 1;
}
