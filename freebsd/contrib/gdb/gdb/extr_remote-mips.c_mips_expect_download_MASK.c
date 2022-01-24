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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ tftp_in_use ; 
 int /*<<< orphan*/  tftp_localname ; 

__attribute__((used)) static int
FUNC3 (char *string)
{
  if (!FUNC1 (string))
    {
      FUNC0 (gdb_stderr, "Load did not complete successfully.\n");
      if (tftp_in_use)
	FUNC2 (tftp_localname);	/* Remove temporary file */
      return 0;
    }
  else
    return 1;
}