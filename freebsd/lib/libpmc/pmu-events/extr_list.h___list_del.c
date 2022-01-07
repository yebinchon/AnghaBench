
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; struct list_head* prev; } ;


 int WRITE_ONCE (int ,struct list_head*) ;

__attribute__((used)) static inline void
__list_del(struct list_head *prev, struct list_head *next)
{
 next->prev = prev;
 WRITE_ONCE(prev->next, next);
}
