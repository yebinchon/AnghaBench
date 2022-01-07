
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_list {struct match* first; } ;
struct match {int pattern; struct match* next; } ;


 int archive_mstring_clean (int *) ;
 int free (struct match*) ;

__attribute__((used)) static void
match_list_free(struct match_list *list)
{
 struct match *p, *q;

 for (p = list->first; p != ((void*)0); ) {
  q = p;
  p = p->next;
  archive_mstring_clean(&(q->pattern));
  free(q);
 }
}
