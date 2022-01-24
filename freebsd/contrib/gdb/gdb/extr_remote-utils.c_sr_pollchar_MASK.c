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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4 (void)
{
  int buf;

  buf = FUNC1 (FUNC3 (), 0);
  if (buf == SERIAL_TIMEOUT)
    buf = 0;
  if (FUNC2 () > 0)
    {
      if (buf)
	FUNC0 ("%c", buf);
      else
	FUNC0 ("<empty character poll>");
    }

  return buf & 0x7f;
}