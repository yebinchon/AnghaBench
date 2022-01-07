
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct match_file {struct match_file* next; } ;
struct entry_list {int count; struct match_file** last; } ;



__attribute__((used)) static void
entry_list_add(struct entry_list *list, struct match_file *file)
{
 *list->last = file;
 list->last = &(file->next);
 list->count++;
}
