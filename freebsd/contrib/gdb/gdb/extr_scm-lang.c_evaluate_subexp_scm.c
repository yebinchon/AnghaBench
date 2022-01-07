
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef enum noside { ____Placeholder_noside } noside ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
struct TYPE_2__ {int opcode; char string; int longconst; } ;
typedef int LONGEST ;


 int BYTES_TO_EXP_ELEM (int) ;
 int EVAL_SKIP ;


 int builtin_type_long ;
 struct value* evaluate_subexp_standard (struct type*,struct expression*,int*,int) ;
 int longest_to_int (int ) ;
 struct value* scm_evaluate_string (char*,int) ;
 struct value* scm_lookup_name (char*) ;
 struct value* value_from_longest (int ,int ) ;

__attribute__((used)) static struct value *
evaluate_subexp_scm (struct type *expect_type, struct expression *exp,
       int *pos, enum noside noside)
{
  enum exp_opcode op = exp->elts[*pos].opcode;
  int len, pc;
  char *str;
  switch (op)
    {
    case 128:
      pc = (*pos)++;
      len = longest_to_int (exp->elts[pc + 1].longconst);
      (*pos) += 3 + BYTES_TO_EXP_ELEM (len + 1);
      if (noside == EVAL_SKIP)
 goto nosideret;
      str = &exp->elts[pc + 2].string;
      return scm_lookup_name (str);
    case 129:
      pc = (*pos)++;
      len = longest_to_int (exp->elts[pc + 1].longconst);
      (*pos) += 3 + BYTES_TO_EXP_ELEM (len + 1);
      if (noside == EVAL_SKIP)
 goto nosideret;
      str = &exp->elts[pc + 2].string;
      return scm_evaluate_string (str, len);
    default:;
    }
  return evaluate_subexp_standard (expect_type, exp, pos, noside);
nosideret:
  return value_from_longest (builtin_type_long, (LONGEST) 1);
}
