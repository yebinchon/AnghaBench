
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mtree_entry* first; } ;
struct mtree_writer {TYPE_1__ file_list; } ;
struct mtree_entry {struct mtree_entry* next; } ;


 int mtree_entry_free (struct mtree_entry*) ;

__attribute__((used)) static void
mtree_entry_register_free(struct mtree_writer *mtree)
{
 struct mtree_entry *file, *file_next;

 file = mtree->file_list.first;
 while (file != ((void*)0)) {
  file_next = file->next;
  mtree_entry_free(file);
  file = file_next;
 }
}
