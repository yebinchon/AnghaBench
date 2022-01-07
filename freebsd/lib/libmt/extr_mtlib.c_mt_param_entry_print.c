
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_status_entry {scalar_t__ var_type; char* entry_name; char* value; char* desc; int * parent; } ;
struct mt_print_params {int flags; } ;


 int MT_PF_FULL_PATH ;
 int MT_PF_VERBOSE ;
 scalar_t__ MT_TYPE_NODE ;
 int mt_param_parent_print (int *,struct mt_print_params*) ;
 int printf (char*,...) ;
 scalar_t__ strlen (char*) ;

void
mt_param_entry_print(struct mt_status_entry *entry, void *arg)
{
 struct mt_print_params *print_params;

 print_params = (struct mt_print_params *)arg;




 if (entry->var_type == MT_TYPE_NODE)
  return;

 if ((print_params->flags & MT_PF_FULL_PATH)
  && (entry->parent != ((void*)0)))
  mt_param_parent_print(entry->parent, print_params);

 printf("%s: %s", entry->entry_name, entry->value);
 if ((print_params->flags & MT_PF_VERBOSE)
  && (entry->desc != ((void*)0))
  && (strlen(entry->desc) > 0))
  printf(" (%s)", entry->desc);
 printf("\n");
}
