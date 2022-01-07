
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_option {struct mtree_option* value; struct mtree_option* next; } ;


 int free (struct mtree_option*) ;

__attribute__((used)) static void
free_options(struct mtree_option *head)
{
 struct mtree_option *next;

 for (; head != ((void*)0); head = next) {
  next = head->next;
  free(head->value);
  free(head);
 }
}
