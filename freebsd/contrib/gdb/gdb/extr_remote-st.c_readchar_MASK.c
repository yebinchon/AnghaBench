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
 int /*<<< orphan*/  log_file ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  st2000_desc ; 

__attribute__((used)) static int
FUNC4 (int timeout)
{
  int c;

  c = FUNC3 (st2000_desc, timeout);

#ifdef LOG_FILE
  putc (c & 0x7f, log_file);
#endif

  if (c >= 0)
    return c & 0x7f;

  if (c == SERIAL_TIMEOUT)
    {
      if (timeout == 0)
	return c;		/* Polls shouldn't generate timeout errors */

      FUNC0 ("Timeout reading from remote system.");
    }

  FUNC1 ("remote-st2000");
}