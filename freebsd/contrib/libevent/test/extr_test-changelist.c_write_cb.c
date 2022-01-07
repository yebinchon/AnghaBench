
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int event_add (struct event*,int *) ;
 int event_del (struct event*) ;
 int printf (char*) ;

__attribute__((used)) static void
write_cb(evutil_socket_t fd, short event, void *arg)
{
 printf("write callback. should only see this once\n");


 event_del(*(struct event**)arg);


 event_add(*(struct event**)arg,((void*)0));


 event_del(*(struct event**)arg);

}
