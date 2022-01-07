
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int WSADATA ;
typedef int WORD ;


 int AF_UNIX ;
 int EV_WRITE ;
 int MAKEWORD (int,int) ;
 int SIGPIPE ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int SOCK_STREAM ;
 int WSAStartup (int ,int *) ;
 int event_add (struct event*,int *) ;
 int event_dispatch () ;
 int event_init () ;
 int event_set (struct event*,int ,int ,int ,struct event*) ;
 int evutil_socketpair (int ,int ,int ,int *) ;
 int * pair ;
 scalar_t__ signal (int ,int ) ;
 int test_okay ;
 int write_cb ;

int
main(int argc, char **argv)
{
 struct event ev;
 if (signal(SIGPIPE, SIG_IGN) == SIG_ERR)
  return (1);


 if (evutil_socketpair(AF_UNIX, SOCK_STREAM, 0, pair) == -1)
  return (1);


 event_init();


 event_set(&ev, pair[1], EV_WRITE, write_cb, &ev);

 event_add(&ev, ((void*)0));

 event_dispatch();

 return (test_okay);
}
