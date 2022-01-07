
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int * sparse_last; struct sparse_block* sparse_list; } ;
struct sparse_block {struct sparse_block* next; } ;


 int free (struct sparse_block*) ;

__attribute__((used)) static void
gnu_clear_sparse_list(struct tar *tar)
{
 struct sparse_block *p;

 while (tar->sparse_list != ((void*)0)) {
  p = tar->sparse_list;
  tar->sparse_list = p->next;
  free(p);
 }
 tar->sparse_last = ((void*)0);
}
