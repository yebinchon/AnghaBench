
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; double tv_usec; } ;
struct event {int dummy; } ;
typedef int evutil_socket_t ;


 int event_add (struct event*,struct timeval*) ;
 int event_is_persistent ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_timerclear (struct timeval*) ;
 int evutil_timersub (struct timeval*,struct timeval*,struct timeval*) ;
 struct timeval lasttime ;
 int printf (char*,int,double) ;

__attribute__((used)) static void
timeout_cb(evutil_socket_t fd, short event, void *arg)
{
 struct timeval newtime, difference;
 struct event *timeout = arg;
 double elapsed;

 evutil_gettimeofday(&newtime, ((void*)0));
 evutil_timersub(&newtime, &lasttime, &difference);
 elapsed = difference.tv_sec +
     (difference.tv_usec / 1.0e6);

 printf("timeout_cb called at %d: %.3f seconds elapsed.\n",
     (int)newtime.tv_sec, elapsed);
 lasttime = newtime;

 if (! event_is_persistent) {
  struct timeval tv;
  evutil_timerclear(&tv);
  tv.tv_sec = 2;
  event_add(timeout, &tv);
 }
}
