
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int TT_BLATHER (char*) ;
 int evutil_closesocket (int) ;
 int have_closed ;

__attribute__((used)) static void
simpleclose_close_fd_cb(evutil_socket_t s, short what, void *ptr)
{
 evutil_socket_t **fds = ptr;
 TT_BLATHER(("Closing"));
 evutil_closesocket(*fds[0]);
 evutil_closesocket(*fds[1]);
 *fds[0] = -1;
 *fds[1] = -1;
 have_closed = 1;
}
