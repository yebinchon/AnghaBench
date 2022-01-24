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
 int SERIAL_TIMEOUT ; 
 int /*<<< orphan*/  e7000_desc ; 
 scalar_t__ echo ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ remote_debug ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5 (int timeout)
{
  int c;

  do
    {
      c = FUNC4 (e7000_desc, timeout);
    }
  while (c > 127);

  if (c == SERIAL_TIMEOUT)
    {
      if (timeout == 0)
	return -1;
      echo = 0;
      FUNC0 ("Timeout reading from remote system.");
    }
  else if (c < 0)
    FUNC0 ("Serial communication error");

  if (remote_debug)
    {
      FUNC3 (c);
      FUNC1 (gdb_stdout);
    }

  return FUNC2 (c);
}