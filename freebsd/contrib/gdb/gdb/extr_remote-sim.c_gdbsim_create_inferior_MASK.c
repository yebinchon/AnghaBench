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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 scalar_t__ FUNC0 (int) ; 
 char** FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  gdbsim_desc ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  program_loaded ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,char**,char**) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void
FUNC16 (char *exec_file, char *args, char **env)
{
  int len;
  char *arg_buf, **argv;

  if (exec_file == 0 || exec_bfd == 0)
    FUNC15 ("No executable file specified.");
  if (!program_loaded)
    FUNC15 ("No program loaded.");

  if (FUNC12 ())
    FUNC8 ("gdbsim_create_inferior: exec_file \"%s\", args \"%s\"\n",
		     (exec_file ? exec_file : "(NULL)"),
		     args);

  FUNC3 ();
  FUNC10 ();
  FUNC4 ();

  if (exec_file != NULL)
    {
      len = FUNC14 (exec_file) + 1 + FUNC14 (args) + 1 + /*slop */ 10;
      arg_buf = (char *) FUNC0 (len);
      arg_buf[0] = '\0';
      FUNC13 (arg_buf, exec_file);
      FUNC13 (arg_buf, " ");
      FUNC13 (arg_buf, args);
      argv = FUNC1 (arg_buf);
      FUNC6 (argv);
    }
  else
    argv = NULL;
  FUNC11 (gdbsim_desc, exec_bfd, argv, env);

  inferior_ptid = FUNC7 (42);
  FUNC5 ();	/* Needed to get correct instruction in cache */

  FUNC2 ();

  /* NB: Entry point already set by sim_create_inferior. */
  FUNC9 ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 0);
}