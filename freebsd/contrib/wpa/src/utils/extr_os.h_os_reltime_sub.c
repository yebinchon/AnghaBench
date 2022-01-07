
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_reltime {scalar_t__ usec; scalar_t__ sec; } ;



__attribute__((used)) static inline void os_reltime_sub(struct os_reltime *a, struct os_reltime *b,
      struct os_reltime *res)
{
 res->sec = a->sec - b->sec;
 res->usec = a->usec - b->usec;
 if (res->usec < 0) {
  res->sec--;
  res->usec += 1000000;
 }
}
