
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int evutil_closesocket (int) ;

__attribute__((used)) static void
close_socket_cb(evutil_socket_t fd, short what, void *arg)
{
 evutil_socket_t *fdp = arg;
 if (*fdp >= 0) {
  evutil_closesocket(*fdp);
  *fdp = -1;
 }
}
