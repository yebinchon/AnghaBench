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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  lexptr ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 

__attribute__((used)) static void
FUNC3 (int skipping)
{
  for (;;)
    {
      int c = FUNC2 ();
      if (')' == c || ']' == c)
	return;
      --lexptr;
      if (c == '\0')
	FUNC0 ("missing close paren");
      FUNC1 (skipping);
    }
}