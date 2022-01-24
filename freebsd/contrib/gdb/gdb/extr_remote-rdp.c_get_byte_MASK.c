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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  io ; 
 scalar_t__ remote_debug ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ timeout ; 

__attribute__((used)) static unsigned char
FUNC3 (void)
{
  int c = FUNC2 (io, timeout);

  if (remote_debug)
    FUNC1 (gdb_stdlog, "[%02x]\n", c);

  if (c == SERIAL_TIMEOUT)
    {
      if (timeout == 0)
	return (unsigned char) c;

      FUNC0 ("Timeout reading from remote_system");
    }

  return c;
}