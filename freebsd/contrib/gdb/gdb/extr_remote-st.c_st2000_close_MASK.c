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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 scalar_t__ log_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st2000_desc ; 

__attribute__((used)) static void
FUNC4 (int quitting)
{
  FUNC3 (st2000_desc);

#if defined (LOG_FILE)
  if (log_file)
    {
      if (ferror (log_file))
	fprintf_unfiltered (gdb_stderr, "Error writing log file.\n");
      if (fclose (log_file) != 0)
	fprintf_unfiltered (gdb_stderr, "Error closing log file.\n");
    }
#endif
}