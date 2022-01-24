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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC4 (char *arg, int from_tty)
{
  unsigned radix;

  radix = (arg == NULL) ? 10 : FUNC0 (arg);
  FUNC3 (0, radix);
  FUNC2 (0, radix);
  if (from_tty)
    {
      FUNC1 ("Input and output radices now set to decimal %u, hex %x, octal %o.\n",
		       radix, radix, radix);
    }
}