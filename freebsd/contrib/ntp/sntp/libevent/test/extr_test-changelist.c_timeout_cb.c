
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int event_del (struct event*) ;
 int printf (char*) ;

__attribute__((used)) static void
timeout_cb(evutil_socket_t fd, short event, void *arg)
{
 printf("timeout fired, time to end test\n");
 event_del(*(struct event**)arg);
 return;
}
