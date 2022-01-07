
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_file {int pathname; struct match_file* next; } ;
struct entry_list {struct match_file* first; } ;


 int archive_mstring_clean (int *) ;
 int free (struct match_file*) ;

__attribute__((used)) static void
entry_list_free(struct entry_list *list)
{
 struct match_file *p, *q;

 for (p = list->first; p != ((void*)0); ) {
  q = p;
  p = p->next;
  archive_mstring_clean(&(q->pathname));
  free(q);
 }
}
