
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int event_base_loopexit (int ,int *) ;
 int global_base ;
 int test_ok ;

__attribute__((used)) static void
periodic_timeout_cb(evutil_socket_t fd, short event, void *arg)
{
 int *count = arg;

 (*count)++;
 if (*count == 6) {


  test_ok = 1;
  event_base_loopexit(global_base, ((void*)0));
 }
}
