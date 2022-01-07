
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 short EV_READ ;
 short EV_WRITE ;
 int test_ok ;

__attribute__((used)) static void
test_multiple_cb(evutil_socket_t fd, short event, void *arg)
{
 if (event & EV_READ)
  test_ok |= 1;
 else if (event & EV_WRITE)
  test_ok |= 2;
}
