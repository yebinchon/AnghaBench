
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct event_base {TYPE_1__ tv_cache; } ;



__attribute__((used)) static inline void
clear_time_cache(struct event_base *base)
{
 base->tv_cache.tv_sec = 0;
}
