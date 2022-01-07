
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int TT_FAIL (char*) ;

__attribute__((used)) static void
trigger_failure_cb(evutil_socket_t fd, short what, void *ctx)
{
 TT_FAIL(("The triggered callback did not fire or the machine is really slow (try increasing timeout)."));
}
