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
struct target_ops {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ exec_bfd ; 
 int /*<<< orphan*/  gdbsim_desc ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  target_shortname ; 

__attribute__((used)) static void
FUNC4 (struct target_ops *target)
{
  char *file = "nothing";

  if (exec_bfd)
    file = FUNC0 (exec_bfd);

  if (FUNC3 ())
    FUNC1 ("gdbsim_files_info: file \"%s\"\n", file);

  if (exec_bfd)
    {
      FUNC1 ("\tAttached to %s running program %s\n",
		       target_shortname, file);
      FUNC2 (gdbsim_desc, 0);
    }
}