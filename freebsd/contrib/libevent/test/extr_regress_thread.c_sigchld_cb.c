
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct event_base {int dummy; } ;
typedef int evutil_socket_t ;


 int event_base_loopexit (struct event_base*,struct timeval*) ;
 int got_sigchld ;

__attribute__((used)) static void
sigchld_cb(evutil_socket_t fd, short event, void *arg)
{
 struct timeval tv;
 struct event_base *base = arg;

 got_sigchld++;
 tv.tv_usec = 100000;
 tv.tv_sec = 0;
 event_base_loopexit(base, &tv);
}
