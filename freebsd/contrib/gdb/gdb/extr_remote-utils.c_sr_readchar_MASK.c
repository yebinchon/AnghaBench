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
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6 (void)
{
  int buf;

  buf = FUNC2 (FUNC4 (), FUNC5 ());

  if (buf == SERIAL_TIMEOUT)
    FUNC0 ("Timeout reading from remote system.");

  if (FUNC3 () > 0)
    FUNC1 ("%c", buf);

  return buf & 0x7f;
}