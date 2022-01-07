
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_monotonic_timer {int dummy; } ;


 int memset (struct evutil_monotonic_timer*,int ,int) ;

int
evutil_configure_monotonic_time_(struct evutil_monotonic_timer *base,
    int precise)
{
 memset(base, 0, sizeof(*base));
 return 0;
}
