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
struct mi_opt {char* member_0; int member_1; int /*<<< orphan*/  member_2; } ;
typedef  enum wp_type { ____Placeholder_wp_type } wp_type ;
typedef  enum opt { ____Placeholder_opt } opt ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
#define  ACCESS_WP 130 
 int /*<<< orphan*/  FROM_TTY ; 
 int MI_CMD_DONE ; 
#define  READ_WP 129 
#define  REG_WP 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int,char**,struct mi_opt*,int*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

enum mi_cmd_result
FUNC5 (char *command, char **argv, int argc)
{
  char *expr = NULL;
  enum wp_type type = REG_WP;
  enum opt
    {
      READ_OPT, ACCESS_OPT
    };
  static struct mi_opt opts[] =
  {
    {"r", READ_OPT, 0},
    {"a", ACCESS_OPT, 0},
    0
  };

  /* Parse arguments. */
  int optind = 0;
  char *optarg;
  while (1)
    {
      int opt = FUNC2 ("mi_cmd_break_watch", argc, argv, opts, &optind, &optarg);
      if (opt < 0)
	break;
      switch ((enum opt) opt)
	{
	case READ_OPT:
	  type = READ_WP;
	  break;
	case ACCESS_OPT:
	  type = ACCESS_WP;
	  break;
	}
    }
  if (optind >= argc)
    FUNC1 ("mi_cmd_break_watch: Missing <expression>");
  if (optind < argc - 1)
    FUNC1 ("mi_cmd_break_watch: Garbage following <expression>");
  expr = argv[optind];

  /* Now we have what we need, let's insert the watchpoint! */
  switch (type)
    {
    case REG_WP:
      FUNC4 (expr, FROM_TTY);
      break;
    case READ_WP:
      FUNC3 (expr, FROM_TTY);
      break;
    case ACCESS_WP:
      FUNC0 (expr, FROM_TTY);
      break;
    default:
      FUNC1 ("mi_cmd_break_watch: Unknown watchpoint type.");
    }
  return MI_CMD_DONE;
}