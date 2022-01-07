
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtabs_and_lines {int nelts; TYPE_1__* sals; } ;
struct function_bounds {scalar_t__ low; scalar_t__ high; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ pc; } ;
typedef scalar_t__ CORE_ADDR ;


 struct symtabs_and_lines decode_line_spec (char*,int) ;
 struct frame_info* deprecated_selected_frame ;
 scalar_t__ find_pc_partial_function (scalar_t__,char**,scalar_t__*,scalar_t__*) ;
 struct frame_info* find_relative_frame (struct frame_info*,int*) ;
 scalar_t__ get_frame_pc (struct frame_info*) ;
 struct frame_info* parse_frame_specification (char*) ;
 int printf_filtered (char*,char*) ;
 int select_and_print_frame (struct frame_info*) ;
 int xfree (struct function_bounds*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
func_command (char *arg, int from_tty)
{
  struct frame_info *fp;
  int found = 0;
  struct symtabs_and_lines sals;
  int i;
  int level = 1;
  struct function_bounds *func_bounds = (struct function_bounds *) ((void*)0);

  if (arg != (char *) ((void*)0))
    return;

  fp = parse_frame_specification ("0");
  sals = decode_line_spec (arg, 1);
  func_bounds = (struct function_bounds *) xmalloc (
         sizeof (struct function_bounds) * sals.nelts);
  for (i = 0; (i < sals.nelts && !found); i++)
    {
      if (sals.sals[i].pc == (CORE_ADDR) 0 ||
   find_pc_partial_function (sals.sals[i].pc,
        (char **) ((void*)0),
        &func_bounds[i].low,
        &func_bounds[i].high) == 0)
 {
   func_bounds[i].low =
     func_bounds[i].high = (CORE_ADDR) ((void*)0);
 }
    }

  do
    {
      for (i = 0; (i < sals.nelts && !found); i++)
 found = (get_frame_pc (fp) >= func_bounds[i].low &&
   get_frame_pc (fp) < func_bounds[i].high);
      if (!found)
 {
   level = 1;
   fp = find_relative_frame (fp, &level);
 }
    }
  while (!found && level == 0);

  if (func_bounds)
    xfree (func_bounds);

  if (!found)
    printf_filtered ("'%s' not within current stack frame.\n", arg);
  else if (fp != deprecated_selected_frame)
    select_and_print_frame (fp);
}
