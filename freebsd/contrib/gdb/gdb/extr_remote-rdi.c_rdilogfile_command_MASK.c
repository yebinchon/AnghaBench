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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ log_filename ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void 
FUNC5 (char *arg, int from_tty)
{
  if (!arg || FUNC2 (arg) == 0)
    {
      FUNC1 ("rdi log file is '%s'\n", log_filename);
      return;
    }

  if (log_filename)
    FUNC3 (log_filename);

  log_filename = FUNC4 (arg);

  FUNC0 (log_filename);
}