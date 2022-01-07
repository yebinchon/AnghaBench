
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct event_base {struct common_timeout_list** common_timeout_queues; } ;
struct common_timeout_list {int dummy; } ;


 size_t COMMON_TIMEOUT_IDX (struct timeval const*) ;

__attribute__((used)) static inline struct common_timeout_list *
get_common_timeout_list(struct event_base *base, const struct timeval *tv)
{
 return base->common_timeout_queues[COMMON_TIMEOUT_IDX(tv)];
}
