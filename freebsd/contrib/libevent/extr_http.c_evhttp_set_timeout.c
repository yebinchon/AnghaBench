
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct evhttp {int dummy; } ;


 int evhttp_set_timeout_tv (struct evhttp*,struct timeval*) ;

void
evhttp_set_timeout(struct evhttp* http, int timeout_in_secs)
{
 if (timeout_in_secs == -1) {
  evhttp_set_timeout_tv(http, ((void*)0));
 } else {
  struct timeval tv;
  tv.tv_sec = timeout_in_secs;
  tv.tv_usec = 0;
  evhttp_set_timeout_tv(http, &tv);
 }
}
