
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_time {scalar_t__ usec; scalar_t__ sec; } ;



__attribute__((used)) static inline void os_time_sub(struct os_time *a, struct os_time *b,
          struct os_time *res)
{
 res->sec = a->sec - b->sec;
 res->usec = a->usec - b->usec;
 if (res->usec < 0) {
  res->sec--;
  res->usec += 1000000;
 }
}
