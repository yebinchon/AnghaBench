#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct frame_info {int dummy; } ;
typedef  enum print_values { ____Placeholder_print_values } print_values ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int PRINT_ALL_VALUES ; 
 int PRINT_NO_VALUES ; 
 int PRINT_SIMPLE_VALUES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct frame_info* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,struct frame_info*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

enum mi_cmd_result
FUNC4 (char *command, char **argv, int argc)
{
  struct frame_info *frame;
  enum print_values print_values;

  if (argc != 1)
    FUNC0 ("mi_cmd_stack_list_locals: Usage: PRINT_VALUES");

   frame = FUNC1 ();

   if (FUNC3 (argv[0], "0") == 0
       || FUNC3 (argv[0], "--no-values") == 0)
     print_values = PRINT_NO_VALUES;
   else if (FUNC3 (argv[0], "1") == 0
	    || FUNC3 (argv[0], "--all-values") == 0)
     print_values = PRINT_ALL_VALUES;
   else if (FUNC3 (argv[0], "2") == 0
	    || FUNC3 (argv[0], "--simple-values") == 0)
     print_values = PRINT_SIMPLE_VALUES;
   else
     FUNC0 ("Unknown value for PRINT_VALUES: must be: 0 or \"--no-values\", 1 or \"--all-values\", 2 or \"--simple-values\"");
  FUNC2 (1, print_values, frame);
  return MI_CMD_DONE;
}