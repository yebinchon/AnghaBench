
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_reltime {scalar_t__ sec; scalar_t__ usec; } ;



__attribute__((used)) static inline int os_reltime_initialized(struct os_reltime *t)
{
 return t->sec != 0 || t->usec != 0;
}
