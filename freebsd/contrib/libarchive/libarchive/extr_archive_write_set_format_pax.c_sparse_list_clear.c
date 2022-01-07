
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparse_block {struct sparse_block* next; } ;
struct pax {int * sparse_tail; struct sparse_block* sparse_list; } ;


 int free (struct sparse_block*) ;

__attribute__((used)) static void
sparse_list_clear(struct pax *pax)
{
 while (pax->sparse_list != ((void*)0)) {
  struct sparse_block *sb = pax->sparse_list;
  pax->sparse_list = sb->next;
  free(sb);
 }
 pax->sparse_tail = ((void*)0);
}
