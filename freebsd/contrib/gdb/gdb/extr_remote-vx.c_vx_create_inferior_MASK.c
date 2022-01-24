#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  taskStart ;
typedef  int /*<<< orphan*/  passArgs ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_6__ {scalar_t__ arg_array_len; int /*<<< orphan*/ * arg_array_val; } ;
typedef  TYPE_1__ arg_array ;
struct TYPE_7__ {int status; int /*<<< orphan*/  pid; } ;
typedef  TYPE_2__ TASK_START ;

/* Variables and functions */
 int /*<<< orphan*/  NO_STOP_QUIETLY ; 
 int /*<<< orphan*/  PROCESS_START ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  STOP_QUIETLY ; 
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_soon ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  vx_run_ops ; 
 int /*<<< orphan*/  vx_running ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  xdr_TASK_START ; 
 int /*<<< orphan*/  xdr_arg_array ; 

__attribute__((used)) static void
FUNC13 (char *exec_file, char *args, char **env)
{
  enum clnt_stat status;
  arg_array passArgs;
  TASK_START taskStart;

  FUNC2 ((char *) &passArgs, '\0', sizeof (passArgs));
  FUNC2 ((char *) &taskStart, '\0', sizeof (taskStart));

  /* parse arguments, put them in passArgs */

  FUNC4 (args, &passArgs);

  if (passArgs.arg_array_len == 0)
    FUNC0 ("You must specify a function name to run, and arguments if any");

  status = FUNC3 (PROCESS_START, xdr_arg_array, &passArgs,
			  xdr_TASK_START, &taskStart);

  if ((status != RPC_SUCCESS) || (taskStart.status == -1))
    FUNC0 ("Can't create process on remote target machine");

  /* Save the name of the running function */
  vx_running = FUNC8 (passArgs.arg_array_val[0],
			   FUNC9 (passArgs.arg_array_val[0]));

  FUNC7 (&vx_run_ops);
  inferior_ptid = FUNC5 (taskStart.pid);

  /* We will get a trace trap after one instruction.
     Insert breakpoints and continue.  */

  FUNC1 ();

  /* Set up the "saved terminal modes" of the inferior
     based on what modes we are starting it with.  */
  FUNC11 ();

  /* Install inferior's terminal modes.  */
  FUNC10 ();

  stop_soon = STOP_QUIETLY;
  FUNC12 ();		/* Get the task spawn event */
  stop_soon = NO_STOP_QUIETLY;

  /* insert_step_breakpoint ();  FIXME, do we need this?  */
  FUNC6 (-1, TARGET_SIGNAL_DEFAULT, 0);
}