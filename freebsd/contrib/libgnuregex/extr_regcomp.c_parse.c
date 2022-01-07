
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ buffer; } ;
typedef TYPE_1__ regex_t ;
typedef int reg_syntax_t ;
typedef scalar_t__ reg_errcode_t ;
typedef int re_token_t ;
typedef int re_string_t ;
struct TYPE_7__ {int syntax; } ;
typedef TYPE_2__ re_dfa_t ;
typedef int bin_tree_t ;


 scalar_t__ BE (int,int ) ;
 int CONCAT ;
 int END_OF_RE ;
 scalar_t__ REG_ESPACE ;
 scalar_t__ REG_NOERROR ;
 int RE_CARET_ANCHORS_HERE ;
 int * create_tree (TYPE_2__*,int *,int *,int ) ;
 int fetch_token (int *,int *,int) ;
 int * parse_reg_exp (int *,TYPE_1__*,int *,int,int ,scalar_t__*) ;

__attribute__((used)) static bin_tree_t *
parse (re_string_t *regexp, regex_t *preg, reg_syntax_t syntax,
       reg_errcode_t *err)
{
  re_dfa_t *dfa = (re_dfa_t *) preg->buffer;
  bin_tree_t *tree, *eor, *root;
  re_token_t current_token;
  dfa->syntax = syntax;
  fetch_token (&current_token, regexp, syntax | RE_CARET_ANCHORS_HERE);
  tree = parse_reg_exp (regexp, preg, &current_token, syntax, 0, err);
  if (BE (*err != REG_NOERROR && tree == ((void*)0), 0))
    return ((void*)0);
  eor = create_tree (dfa, ((void*)0), ((void*)0), END_OF_RE);
  if (tree != ((void*)0))
    root = create_tree (dfa, tree, eor, CONCAT);
  else
    root = eor;
  if (BE (eor == ((void*)0) || root == ((void*)0), 0))
    {
      *err = REG_ESPACE;
      return ((void*)0);
    }
  return root;
}
