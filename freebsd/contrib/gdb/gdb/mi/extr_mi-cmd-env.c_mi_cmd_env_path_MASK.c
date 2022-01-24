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
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_environ ; 
 int FUNC4 (char*,int,char**,struct mi_opt*,int*,char**) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 char* orig_path ; 
 int /*<<< orphan*/  path_var_name ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 

enum mi_cmd_result
FUNC10 (char *command, char **argv, int argc)
{
  char *exec_path;
  char *env;
  int reset = 0;
  int optind = 0;
  int i;
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

  if (FUNC5 (uiout) < 2)
    {
      for (i = argc - 1; i >= 0; --i)
	FUNC1 ("path", argv[i]);
      return MI_CMD_DONE;
    }

  /* Otherwise the mi level is 2 or higher.  */
  while (1)
    {
      int opt = FUNC4 ("mi_cmd_env_path", argc, argv, opts,
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
      /* Reset implies resetting to original path first.  */
      exec_path = FUNC9 (orig_path);
    }
  else
    {
      /* Otherwise, get current path to modify.  */
      env = FUNC3 (inferior_environ, path_var_name);

      /* Can be null if path is not set.  */
      if (!env)
        env = "";
      exec_path = FUNC9 (env);
    }

  for (i = argc - 1; i >= 0; --i)
    FUNC2 (argv[i], &exec_path);

  FUNC6 (inferior_environ, path_var_name, exec_path);
  FUNC8 (exec_path);
  env = FUNC3 (inferior_environ, path_var_name);
  FUNC7 (uiout, "path", env);

  return MI_CMD_DONE;
}