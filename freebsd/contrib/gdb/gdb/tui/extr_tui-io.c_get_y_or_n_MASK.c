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
 int ABORT_CHAR ; 
 int RUBOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int
FUNC2 (void)
{
  extern int FUNC3 ();
  int c;

  for (;;)
    {
      c = FUNC1 ();
      if (c == 'y' || c == 'Y' || c == ' ')
	return (1);
      if (c == 'n' || c == 'N' || c == RUBOUT)
	return (0);
      if (c == ABORT_CHAR)
	FUNC3 ();
      FUNC0 ();
    }
}