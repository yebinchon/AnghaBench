
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct symbol {int dummy; } ;
struct frame_info {int dummy; } ;
struct block {int dummy; } ;


 struct symbol* BLOCK_FUNCTION (struct block*) ;
 scalar_t__ SYMBOL_PRINT_NAME (struct symbol*) ;
 struct frame_info* block_innermost_frame (struct block*) ;
 int error (char*,...) ;
 struct value* read_var_value (struct symbol*,struct frame_info*) ;
 scalar_t__ symbol_read_needs_frame (struct symbol*) ;

struct value *
value_of_variable (struct symbol *var, struct block *b)
{
  struct value *val;
  struct frame_info *frame = ((void*)0);

  if (!b)
    frame = ((void*)0);
  else if (symbol_read_needs_frame (var))
    {
      frame = block_innermost_frame (b);
      if (!frame)
 {
   if (BLOCK_FUNCTION (b)
       && SYMBOL_PRINT_NAME (BLOCK_FUNCTION (b)))
     error ("No frame is currently executing in block %s.",
     SYMBOL_PRINT_NAME (BLOCK_FUNCTION (b)));
   else
     error ("No frame is currently executing in specified block");
 }
    }

  val = read_var_value (var, frame);
  if (!val)
    error ("Address of symbol \"%s\" is unknown.", SYMBOL_PRINT_NAME (var));

  return val;
}
