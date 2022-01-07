
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mtree_entry** last; } ;
struct mtree_writer {TYPE_1__ file_list; } ;
struct mtree_entry {struct mtree_entry* next; } ;



__attribute__((used)) static void
mtree_entry_register_add(struct mtree_writer *mtree, struct mtree_entry *file)
{
        file->next = ((void*)0);
        *mtree->file_list.last = file;
        mtree->file_list.last = &(file->next);
}
