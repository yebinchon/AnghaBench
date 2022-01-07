
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {scalar_t__ opcode; struct type* type; } ;


 scalar_t__ OP_TYPE ;
 struct type* VALUE_TYPE (struct value*) ;
 int do_cleanups (struct cleanup*) ;
 struct value* evaluate_type (struct expression*) ;
 int free_current_contents ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 struct expression* parse_expression (char*) ;
 int recursive_dump_type (struct type*,int ) ;

void
maintenance_print_type (char *typename, int from_tty)
{
  struct value *val;
  struct type *type;
  struct cleanup *old_chain;
  struct expression *expr;

  if (typename != ((void*)0))
    {
      expr = parse_expression (typename);
      old_chain = make_cleanup (free_current_contents, &expr);
      if (expr->elts[0].opcode == OP_TYPE)
 {

   type = expr->elts[1].type;
 }
      else
 {


   val = evaluate_type (expr);
   type = VALUE_TYPE (val);
 }
      if (type != ((void*)0))
 {
   recursive_dump_type (type, 0);
 }
      do_cleanups (old_chain);
    }
}
