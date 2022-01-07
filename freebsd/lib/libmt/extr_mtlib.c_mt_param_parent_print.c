
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_status_entry {char* entry_name; struct mt_status_entry* parent; } ;
struct mt_print_params {int flags; int root_name; } ;


 int MT_PF_INCLUDE_ROOT ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char*,int ) ;

void
mt_param_parent_print(struct mt_status_entry *entry,
    struct mt_print_params *print_params)
{
 if (entry->parent != ((void*)0))
  mt_param_parent_print(entry->parent, print_params);

 if (((print_params->flags & MT_PF_INCLUDE_ROOT) == 0)
  && (strcmp(entry->entry_name, print_params->root_name) == 0))
  return;

 printf("%s.", entry->entry_name);
}
