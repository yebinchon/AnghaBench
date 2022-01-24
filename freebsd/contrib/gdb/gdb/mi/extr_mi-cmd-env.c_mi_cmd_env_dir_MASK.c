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
typedef  enum opt { ____Placeholder_opt } opt ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char*,int,char**,struct mi_opt*,int*,char**) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  source_path ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

enum mi_cmd_result
FUNC10 (char *command, char **argv, int argc)
{
  int i;
  int optind = 0;
  int reset = 0;
  char *optarg;
  enum opt
    {
      RESET_OPT
    };
  static struct mi_opt opts[] =
  {
    {"r", RESET_OPT, 0},
    0
  };

  FUNC0 ();

  if (FUNC7 (uiout) < 2)
    {
      for (i = argc - 1; i >= 0; --i)
	FUNC1 ("dir", argv[i]);
      return MI_CMD_DONE;
    }

  /* Otherwise mi level is 2 or higher.  */
  while (1)
    {
      int opt = FUNC6 ("mi_cmd_env_dir", argc, argv, opts,
                           &optind, &optarg);
      if (opt < 0)
        break;
      switch ((enum opt) opt)
        {
        case RESET_OPT:
          reset = 1;
          break;
        }
    }
  argv += optind;
  argc -= optind;

  if (reset)
    {
      /* Reset means setting to default path first.  */
      FUNC9 (source_path);
      FUNC5 ();
    }

  for (i = argc - 1; i >= 0; --i)
    FUNC2 (argv[i], &source_path);
  FUNC4 ();

  FUNC8 (uiout, "source-path", source_path);
  FUNC3 ();

  return MI_CMD_DONE;
}