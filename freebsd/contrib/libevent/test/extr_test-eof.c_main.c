
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;
typedef int WSADATA ;
typedef int WORD ;


 int AF_UNIX ;
 int EVUTIL_SHUT_WR ;
 int EV_READ ;
 int EV_TIMEOUT ;
 int MAKEWORD (int,int) ;
 int SOCK_STREAM ;
 int WSAStartup (int ,int *) ;
 int event_add (struct event*,int *) ;
 int event_dispatch () ;
 int event_init () ;
 int event_set (struct event*,int ,int,int ,struct event*) ;
 int evutil_socketpair (int ,int ,int ,int *) ;
 int read_cb ;
 scalar_t__ send (int ,char const*,int,int ) ;
 int shutdown (int ,int ) ;
 scalar_t__ strlen (char const*) ;
 int test_okay ;
 int timeout ;

int
main(int argc, char **argv)
{
 struct event ev;
 const char *test = "test string";
 evutil_socket_t pair[2];
 if (evutil_socketpair(AF_UNIX, SOCK_STREAM, 0, pair) == -1)
  return (1);


 if (send(pair[0], test, (int)strlen(test)+1, 0) < 0)
  return (1);
 shutdown(pair[0], EVUTIL_SHUT_WR);


 event_init();


 event_set(&ev, pair[1], EV_READ | EV_TIMEOUT, read_cb, &ev);

 event_add(&ev, &timeout);

 event_dispatch();

 return (test_okay);
}
