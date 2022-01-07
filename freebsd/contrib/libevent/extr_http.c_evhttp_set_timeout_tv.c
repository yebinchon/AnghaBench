
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct evhttp {struct timeval timeout; } ;


 int evutil_timerclear (struct timeval*) ;

void
evhttp_set_timeout_tv(struct evhttp* http, const struct timeval* tv)
{
 if (tv) {
  http->timeout = *tv;
 } else {
  evutil_timerclear(&http->timeout);
 }
}
