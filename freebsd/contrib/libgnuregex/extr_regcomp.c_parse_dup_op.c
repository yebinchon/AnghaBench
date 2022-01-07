
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int reg_syntax_t ;
typedef int reg_errcode_t ;
struct TYPE_17__ {char c; } ;
struct TYPE_20__ {scalar_t__ type; TYPE_1__ opr; } ;
typedef TYPE_4__ re_token_t ;
typedef int re_string_t ;
typedef int re_dfa_t ;
struct TYPE_18__ {scalar_t__ idx; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_2__ opr; } ;
struct TYPE_21__ {TYPE_3__ token; } ;
typedef TYPE_5__ bin_tree_t ;


 scalar_t__ BE (int,int) ;
 scalar_t__ CHARACTER ;
 int CONCAT ;
 scalar_t__ END_OF_RE ;
 int OP_ALT ;
 scalar_t__ OP_CLOSE_DUP_NUM ;
 int OP_DUP_ASTERISK ;
 scalar_t__ OP_DUP_PLUS ;
 scalar_t__ OP_DUP_QUESTION ;
 scalar_t__ OP_OPEN_DUP_NUM ;
 int REG_BADBR ;
 int REG_EBRACE ;
 int REG_ESPACE ;
 int RE_INVALID_INTERVAL_ORD ;
 scalar_t__ SUBEXP ;
 TYPE_5__* create_tree (int *,TYPE_5__*,TYPE_5__*,int ) ;
 TYPE_5__* duplicate_tree (TYPE_5__*,int *) ;
 int fetch_number (int *,TYPE_4__*,int) ;
 int fetch_token (TYPE_4__*,int *,int) ;
 int free_tree ;
 int mark_opt_subexp ;
 int postorder (TYPE_5__*,int ,void*) ;
 int re_string_cur_idx (int *) ;
 int re_string_set_index (int *,int) ;

__attribute__((used)) static bin_tree_t *
parse_dup_op (bin_tree_t *elem, re_string_t *regexp, re_dfa_t *dfa,
       re_token_t *token, reg_syntax_t syntax, reg_errcode_t *err)
{
  bin_tree_t *tree = ((void*)0), *old_tree = ((void*)0);
  int i, start, end, start_idx = re_string_cur_idx (regexp);
  re_token_t start_token = *token;

  if (token->type == OP_OPEN_DUP_NUM)
    {
      end = 0;
      start = fetch_number (regexp, token, syntax);
      if (start == -1)
 {
   if (token->type == CHARACTER && token->opr.c == ',')
     start = 0;
   else
     {
       *err = REG_BADBR;
       return ((void*)0);
     }
 }
      if (BE (start != -2, 1))
 {

   end = ((token->type == OP_CLOSE_DUP_NUM) ? start
   : ((token->type == CHARACTER && token->opr.c == ',')
      ? fetch_number (regexp, token, syntax) : -2));
 }
      if (BE (start == -2 || end == -2, 0))
 {

   if (BE (!(syntax & RE_INVALID_INTERVAL_ORD), 0))
     {
       if (token->type == END_OF_RE)
  *err = REG_EBRACE;
       else
  *err = REG_BADBR;

       return ((void*)0);
     }


   re_string_set_index (regexp, start_idx);
   *token = start_token;
   token->type = CHARACTER;


   return elem;
 }

      if (BE ((end != -1 && start > end) || token->type != OP_CLOSE_DUP_NUM, 0))
 {

   *err = REG_BADBR;
   return ((void*)0);
 }
    }
  else
    {
      start = (token->type == OP_DUP_PLUS) ? 1 : 0;
      end = (token->type == OP_DUP_QUESTION) ? 1 : -1;
    }

  fetch_token (token, regexp, syntax);

  if (BE (elem == ((void*)0), 0))
    return ((void*)0);
  if (BE (start == 0 && end == 0, 0))
    {
      postorder (elem, free_tree, ((void*)0));
      return ((void*)0);
    }


  if (BE (start > 0, 0))
    {
      tree = elem;
      for (i = 2; i <= start; ++i)
 {
   elem = duplicate_tree (elem, dfa);
   tree = create_tree (dfa, tree, elem, CONCAT);
   if (BE (elem == ((void*)0) || tree == ((void*)0), 0))
     goto parse_dup_op_espace;
 }

      if (start == end)
 return tree;


      elem = duplicate_tree (elem, dfa);
      old_tree = tree;
    }
  else
    old_tree = ((void*)0);

  if (elem->token.type == SUBEXP)
    postorder (elem, mark_opt_subexp, (void *) (long) elem->token.opr.idx);

  tree = create_tree (dfa, elem, ((void*)0), (end == -1 ? OP_DUP_ASTERISK : OP_ALT));
  if (BE (tree == ((void*)0), 0))
    goto parse_dup_op_espace;




  for (i = start + 2; i <= end; ++i)
    {
      elem = duplicate_tree (elem, dfa);
      tree = create_tree (dfa, tree, elem, CONCAT);
      if (BE (elem == ((void*)0) || tree == ((void*)0), 0))
 goto parse_dup_op_espace;

      tree = create_tree (dfa, tree, ((void*)0), OP_ALT);
      if (BE (tree == ((void*)0), 0))
 goto parse_dup_op_espace;
    }

  if (old_tree)
    tree = create_tree (dfa, old_tree, tree, CONCAT);

  return tree;

 parse_dup_op_espace:
  *err = REG_ESPACE;
  return ((void*)0);
}
