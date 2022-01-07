
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int re_nsub; scalar_t__ buffer; } ;
typedef TYPE_3__ regex_t ;
typedef int reg_syntax_t ;
typedef scalar_t__ reg_errcode_t ;
struct TYPE_21__ {scalar_t__ type; } ;
typedef TYPE_4__ re_token_t ;
typedef int re_string_t ;
struct TYPE_22__ {int completed_bkref_map; } ;
typedef TYPE_5__ re_dfa_t ;
struct TYPE_18__ {size_t idx; } ;
struct TYPE_19__ {TYPE_1__ opr; } ;
struct TYPE_23__ {TYPE_2__ token; } ;
typedef TYPE_6__ bin_tree_t ;


 scalar_t__ BE (int,int ) ;
 scalar_t__ OP_CLOSE_SUBEXP ;
 scalar_t__ REG_EPAREN ;
 scalar_t__ REG_ESPACE ;
 scalar_t__ REG_NOERROR ;
 int RE_CARET_ANCHORS_HERE ;
 int SUBEXP ;
 TYPE_6__* create_tree (TYPE_5__*,TYPE_6__*,int *,int ) ;
 int fetch_token (TYPE_4__*,int *,int) ;
 int free_tree ;
 TYPE_6__* parse_reg_exp (int *,TYPE_3__*,TYPE_4__*,int,int,scalar_t__*) ;
 int postorder (TYPE_6__*,int ,int *) ;

__attribute__((used)) static bin_tree_t *
parse_sub_exp (re_string_t *regexp, regex_t *preg, re_token_t *token,
        reg_syntax_t syntax, int nest, reg_errcode_t *err)
{
  re_dfa_t *dfa = (re_dfa_t *) preg->buffer;
  bin_tree_t *tree;
  size_t cur_nsub;
  cur_nsub = preg->re_nsub++;

  fetch_token (token, regexp, syntax | RE_CARET_ANCHORS_HERE);


  if (token->type == OP_CLOSE_SUBEXP)
    tree = ((void*)0);
  else
    {
      tree = parse_reg_exp (regexp, preg, token, syntax, nest, err);
      if (BE (*err == REG_NOERROR && token->type != OP_CLOSE_SUBEXP, 0))
 {
   if (tree != ((void*)0))
     postorder (tree, free_tree, ((void*)0));
   *err = REG_EPAREN;
 }
      if (BE (*err != REG_NOERROR, 0))
 return ((void*)0);
    }

  if (cur_nsub <= '9' - '1')
    dfa->completed_bkref_map |= 1 << cur_nsub;

  tree = create_tree (dfa, tree, ((void*)0), SUBEXP);
  if (BE (tree == ((void*)0), 0))
    {
      *err = REG_ESPACE;
      return ((void*)0);
    }
  tree->token.opr.idx = cur_nsub;
  return tree;
}
