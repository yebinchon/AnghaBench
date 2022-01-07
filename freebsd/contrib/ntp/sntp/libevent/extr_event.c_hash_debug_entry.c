
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_debug_entry {scalar_t__ ptr; } ;
typedef int ev_uintptr_t ;



__attribute__((used)) static inline unsigned
hash_debug_entry(const struct event_debug_entry *e)
{




 unsigned u = (unsigned) ((ev_uintptr_t) e->ptr);



 return (u >> 6);
}
