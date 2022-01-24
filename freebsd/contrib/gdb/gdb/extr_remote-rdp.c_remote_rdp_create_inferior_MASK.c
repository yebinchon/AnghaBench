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
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9 (char *exec_file, char *allargs, char **env)
{
  CORE_ADDR entry_point;

  if (exec_file == 0 || exec_bfd == 0)
    FUNC1 ("No executable file specified.");

  entry_point = (CORE_ADDR) FUNC0 (exec_bfd);

  FUNC7 ();
  FUNC8 ();
  FUNC2 ();

  /* This gives us a chance to set up the command line */
  FUNC6 (exec_file, allargs);

  inferior_ptid = FUNC4 (42);
  FUNC3 ();	/* Needed to get correct instruction in cache */

  /*
     ** RDP targets don't provide any facility to set the top of memory,
     ** so we don't bother to look for MEMSIZE in the environment.
   */

  /* Let's go! */
  FUNC5 (entry_point, TARGET_SIGNAL_DEFAULT, 0);
}