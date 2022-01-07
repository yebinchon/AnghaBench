
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * first; int ** last; } ;
struct mtree_writer {TYPE_1__ file_list; } ;



__attribute__((used)) static void
mtree_entry_register_init(struct mtree_writer *mtree)
{
 mtree->file_list.first = ((void*)0);
 mtree->file_list.last = &(mtree->file_list.first);
}
