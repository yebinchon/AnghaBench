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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

void
FUNC7 (const char *string, int errcode)
{
  char *err;
  char *combined;

  err = FUNC3 (errcode);
  combined = (char *) FUNC0 (FUNC6 (err) + FUNC6 (string) + 3);
  FUNC5 (combined, string);
  FUNC4 (combined, ": ");
  FUNC4 (combined, err);

  /* We want anything which was printed on stdout to come out first, before
     this message.  */
  FUNC2 (gdb_stdout);
  FUNC1 (gdb_stderr, "%s.\n", combined);
}