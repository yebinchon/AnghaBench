
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_time {scalar_t__ sec; scalar_t__ usec; } ;



__attribute__((used)) static inline int os_time_before(struct os_time *a, struct os_time *b)
{
 return (a->sec < b->sec) ||
        (a->sec == b->sec && a->usec < b->usec);
}
