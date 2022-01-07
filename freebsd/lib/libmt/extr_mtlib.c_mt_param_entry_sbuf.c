
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct mt_status_entry {scalar_t__ var_type; int * desc; int value; int entry_name; int * parent; } ;
struct mt_print_params {int flags; } ;


 int MT_PF_FULL_PATH ;
 int MT_PF_VERBOSE ;
 scalar_t__ MT_TYPE_NODE ;
 int mt_param_parent_sbuf (struct sbuf*,int *,struct mt_print_params*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 scalar_t__ strlen (int *) ;

void
mt_param_entry_sbuf(struct sbuf *sb, struct mt_status_entry *entry, void *arg)
{
 struct mt_print_params *print_params;

 print_params = (struct mt_print_params *)arg;




 if (entry->var_type == MT_TYPE_NODE)
  return;

 if ((print_params->flags & MT_PF_FULL_PATH)
  && (entry->parent != ((void*)0)))
  mt_param_parent_sbuf(sb, entry->parent, print_params);

 sbuf_printf(sb, "%s: %s", entry->entry_name, entry->value);
 if ((print_params->flags & MT_PF_VERBOSE)
  && (entry->desc != ((void*)0))
  && (strlen(entry->desc) > 0))
  sbuf_printf(sb, " (%s)", entry->desc);
 sbuf_printf(sb, "\n");

}
