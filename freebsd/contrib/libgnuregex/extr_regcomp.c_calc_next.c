
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int reg_errcode_t ;
struct TYPE_7__ {int type; } ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* right; TYPE_3__* left; TYPE_2__ token; } ;
typedef TYPE_4__ bin_tree_t ;
struct TYPE_8__ {TYPE_4__* next; } ;
struct TYPE_6__ {TYPE_4__* next; TYPE_4__* first; } ;




 int REG_NOERROR ;

__attribute__((used)) static reg_errcode_t
calc_next (void *extra, bin_tree_t *node)
{
  switch (node->token.type)
    {
    case 128:
      node->left->next = node;
      break;
    case 129:
      node->left->next = node->right->first;
      node->right->next = node->next;
      break;
    default:
      if (node->left)
 node->left->next = node->next;
      if (node->right)
 node->right->next = node->next;
      break;
    }
  return REG_NOERROR;
}
