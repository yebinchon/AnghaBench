
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct evhttp_connection {struct timeval initial_retry_timeout; } ;


 int evutil_timerclear (struct timeval*) ;

void
evhttp_connection_set_initial_retry_tv(struct evhttp_connection *evcon,
    const struct timeval *tv)
{
 if (tv) {
  evcon->initial_retry_timeout = *tv;
 } else {
  evutil_timerclear(&evcon->initial_retry_timeout);
  evcon->initial_retry_timeout.tv_sec = 2;
 }
}
