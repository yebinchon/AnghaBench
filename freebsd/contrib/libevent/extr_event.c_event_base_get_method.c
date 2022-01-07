
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_base {TYPE_1__* evsel; } ;
struct TYPE_2__ {char const* name; } ;


 int EVUTIL_ASSERT (struct event_base const*) ;

const char *
event_base_get_method(const struct event_base *base)
{
 EVUTIL_ASSERT(base);
 return (base->evsel->name);
}
