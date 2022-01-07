
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* org_indices; TYPE_3__* nodes; } ;
typedef TYPE_1__ re_dfa_t ;
struct TYPE_6__ {unsigned int constraint; int duplicated; } ;


 scalar_t__ BE (int,int) ;
 int re_dfa_add_node (TYPE_1__*,TYPE_3__) ;

__attribute__((used)) static int
duplicate_node (re_dfa_t *dfa, int org_idx, unsigned int constraint)
{
  int dup_idx = re_dfa_add_node (dfa, dfa->nodes[org_idx]);
  if (BE (dup_idx != -1, 1))
    {
      dfa->nodes[dup_idx].constraint = constraint;
      dfa->nodes[dup_idx].constraint |= dfa->nodes[org_idx].constraint;
      dfa->nodes[dup_idx].duplicated = 1;


      dfa->org_indices[dup_idx] = org_idx;
    }
  return dup_idx;
}
