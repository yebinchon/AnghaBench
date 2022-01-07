
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ buffer; } ;
typedef TYPE_1__ regex_t ;
struct TYPE_7__ {TYPE_3__* org_indices; int * str_tree; int str_tree_storage_idx; TYPE_3__* str_tree_storage; } ;
typedef TYPE_2__ re_dfa_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_3__ bin_tree_storage_t ;


 int BIN_TREE_STORAGE_SIZE ;
 int re_free (TYPE_3__*) ;

__attribute__((used)) static void
free_workarea_compile (regex_t *preg)
{
  re_dfa_t *dfa = (re_dfa_t *) preg->buffer;
  bin_tree_storage_t *storage, *next;
  for (storage = dfa->str_tree_storage; storage; storage = next)
    {
      next = storage->next;
      re_free (storage);
    }
  dfa->str_tree_storage = ((void*)0);
  dfa->str_tree_storage_idx = BIN_TREE_STORAGE_SIZE;
  dfa->str_tree = ((void*)0);
  re_free (dfa->org_indices);
  dfa->org_indices = ((void*)0);
}
