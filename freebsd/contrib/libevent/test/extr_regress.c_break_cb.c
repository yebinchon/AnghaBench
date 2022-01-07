
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int event_loopbreak () ;
 int test_ok ;

__attribute__((used)) static void
break_cb(evutil_socket_t fd, short events, void *arg)
{
 test_ok = 1;
 event_loopbreak();
}
