
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_entry {int dummy; } ;
struct attr_counter {int count; struct mtree_entry* m_entry; int * next; struct attr_counter* prev; } ;


 struct attr_counter* malloc (int) ;

__attribute__((used)) static struct attr_counter *
attr_counter_new(struct mtree_entry *me, struct attr_counter *prev)
{
 struct attr_counter *ac;

 ac = malloc(sizeof(*ac));
 if (ac != ((void*)0)) {
  ac->prev = prev;
  ac->next = ((void*)0);
  ac->count = 1;
  ac->m_entry = me;
 }
 return (ac);
}
