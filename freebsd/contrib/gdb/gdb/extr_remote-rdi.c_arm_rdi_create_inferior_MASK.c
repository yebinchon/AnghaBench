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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int RDIError_NoError ; 
 int /*<<< orphan*/  RDIInfo_SetTopMem ; 
 int /*<<< orphan*/  RDISet_Cmdline ; 
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 unsigned long FUNC15 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16 (char *exec_file, char *args, char **env)
{
  int len, rslt;
  unsigned long arg1, arg2;
  char *arg_buf;
  CORE_ADDR entry_point;

  if (exec_file == 0 || exec_bfd == 0)
    FUNC4 ("No executable file specified.");

  entry_point = (CORE_ADDR) FUNC3 (exec_bfd);

  FUNC2 ();
  FUNC11 ();
  FUNC5 ();

  len = FUNC13 (exec_file) + 1 + FUNC13 (args) + 1 + /*slop */ 10;
  arg_buf = (char *) FUNC0 (len);
  arg_buf[0] = '\0';
  FUNC12 (arg_buf, exec_file);
  FUNC12 (arg_buf, " ");
  FUNC12 (arg_buf, args);

  inferior_ptid = FUNC7 (42);
  FUNC6 ();	/* Needed to get correct instruction in cache */

  if (env != NULL)
    {
      while (*env)
	{
	  if (FUNC14 (*env, "MEMSIZE=", sizeof ("MEMSIZE=") - 1) == 0)
	    {
	      unsigned long top_of_memory;
	      char *end_of_num;

	      /* Set up memory limit */
	      top_of_memory = FUNC15 (*env + sizeof ("MEMSIZE=") - 1,
				       &end_of_num, 0);
	      FUNC8 ("Setting top-of-memory to 0x%lx\n",
			       top_of_memory);

	      rslt = FUNC1 (RDIInfo_SetTopMem, &top_of_memory, &arg2);
	      if (rslt != RDIError_NoError)
		{
		  FUNC8 ("RDI_info: %s\n", FUNC10 (rslt));
		}
	    }
	  env++;
	}
    }

  arg1 = (unsigned long) arg_buf;
  rslt = FUNC1 (RDISet_Cmdline, /* &arg1 */ (unsigned long *) arg_buf, &arg2);
  if (rslt != RDIError_NoError)
    {
      FUNC8 ("RDI_info: %s\n", FUNC10 (rslt));
    }

  FUNC9 (entry_point, TARGET_SIGNAL_DEFAULT, 0);
}