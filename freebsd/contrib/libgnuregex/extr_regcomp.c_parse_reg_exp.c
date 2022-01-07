
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ buffer; } ;
typedef TYPE_1__ regex_t ;
typedef int reg_syntax_t ;
typedef scalar_t__ reg_errcode_t ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_2__ re_token_t ;
typedef int re_string_t ;
typedef int re_dfa_t ;
typedef int bin_tree_t ;


 scalar_t__ BE (int,int ) ;
 scalar_t__ END_OF_RE ;
 scalar_t__ OP_ALT ;
 scalar_t__ OP_CLOSE_SUBEXP ;
 scalar_t__ REG_ESPACE ;
 scalar_t__ REG_NOERROR ;
 int RE_CARET_ANCHORS_HERE ;
 int * create_tree (int *,int *,int *,scalar_t__) ;
 int fetch_token (TYPE_2__*,int *,int) ;
 int * parse_branch (int *,TYPE_1__*,TYPE_2__*,int,int,scalar_t__*) ;

__attribute__((used)) static bin_tree_t *
parse_reg_exp (re_string_t *regexp, regex_t *preg, re_token_t *token,
        reg_syntax_t syntax, int nest, reg_errcode_t *err)
{
  re_dfa_t *dfa = (re_dfa_t *) preg->buffer;
  bin_tree_t *tree, *branch = ((void*)0);
  tree = parse_branch (regexp, preg, token, syntax, nest, err);
  if (BE (*err != REG_NOERROR && tree == ((void*)0), 0))
    return ((void*)0);

  while (token->type == OP_ALT)
    {
      fetch_token (token, regexp, syntax | RE_CARET_ANCHORS_HERE);
      if (token->type != OP_ALT && token->type != END_OF_RE
   && (nest == 0 || token->type != OP_CLOSE_SUBEXP))
 {
   branch = parse_branch (regexp, preg, token, syntax, nest, err);
   if (BE (*err != REG_NOERROR && branch == ((void*)0), 0))
     return ((void*)0);
 }
      else
 branch = ((void*)0);
      tree = create_tree (dfa, tree, branch, OP_ALT);
      if (BE (tree == ((void*)0), 0))
 {
   *err = REG_ESPACE;
   return ((void*)0);
 }
    }
  return tree;
}
