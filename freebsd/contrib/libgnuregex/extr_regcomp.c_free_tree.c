
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int reg_errcode_t ;
struct TYPE_3__ {int token; } ;
typedef TYPE_1__ bin_tree_t ;


 int REG_NOERROR ;
 int free_token (int *) ;

__attribute__((used)) static reg_errcode_t
free_tree (void *extra, bin_tree_t *node)
{
  free_token (&node->token);
  return REG_NOERROR;
}
