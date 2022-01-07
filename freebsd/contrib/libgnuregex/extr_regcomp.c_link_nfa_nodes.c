
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int reg_errcode_t ;
struct TYPE_16__ {int has_plural_match; int* nexts; int edests; } ;
typedef TYPE_7__ re_dfa_t ;
struct TYPE_14__ {int type; } ;
struct TYPE_17__ {int node_idx; TYPE_6__* next; TYPE_5__ token; TYPE_4__* right; TYPE_2__* left; } ;
typedef TYPE_8__ bin_tree_t ;
struct TYPE_15__ {int node_idx; } ;
struct TYPE_13__ {TYPE_3__* first; } ;
struct TYPE_12__ {int node_idx; } ;
struct TYPE_11__ {TYPE_1__* first; } ;
struct TYPE_10__ {int node_idx; } ;





 int IS_EPSILON_NODE (int const) ;





 int REG_NOERROR ;
 int assert (int) ;
 int re_node_set_init_1 (int ,int) ;
 int re_node_set_init_2 (int ,int,int) ;

__attribute__((used)) static reg_errcode_t
link_nfa_nodes (void *extra, bin_tree_t *node)
{
  re_dfa_t *dfa = (re_dfa_t *) extra;
  int idx = node->node_idx;
  reg_errcode_t err = REG_NOERROR;

  switch (node->token.type)
    {
    case 134:
      break;

    case 133:
      assert (node->next == ((void*)0));
      break;

    case 129:
    case 132:
      {
 int left, right;
 dfa->has_plural_match = 1;
 if (node->left != ((void*)0))
   left = node->left->first->node_idx;
 else
   left = node->next->node_idx;
 if (node->right != ((void*)0))
   right = node->right->first->node_idx;
 else
   right = node->next->node_idx;
 assert (left > -1);
 assert (right > -1);
 err = re_node_set_init_2 (dfa->edests + idx, left, right);
      }
      break;

    case 135:
    case 128:
    case 130:
      err = re_node_set_init_1 (dfa->edests + idx, node->next->node_idx);
      break;

    case 131:
      dfa->nexts[idx] = node->next->node_idx;
      if (node->token.type == 131)
 err = re_node_set_init_1 (dfa->edests + idx, dfa->nexts[idx]);
      break;

    default:
      assert (!IS_EPSILON_NODE (node->token.type));
      dfa->nexts[idx] = node->next->node_idx;
      break;
    }

  return err;
}
