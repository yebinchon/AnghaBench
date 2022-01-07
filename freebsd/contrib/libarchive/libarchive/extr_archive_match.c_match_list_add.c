
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_list {int unmatched_count; int count; struct match** last; } ;
struct match {struct match* next; } ;



__attribute__((used)) static void
match_list_add(struct match_list *list, struct match *m)
{
 *list->last = m;
 list->last = &(m->next);
 list->count++;
 list->unmatched_count++;
}
