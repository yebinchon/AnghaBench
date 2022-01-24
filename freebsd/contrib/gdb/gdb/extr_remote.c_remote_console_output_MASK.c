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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdtarg ; 

void
FUNC3 (char *msg)
{
  char *p;

  for (p = msg; p[0] && p[1]; p += 2)
    {
      char tb[2];
      char c = FUNC1 (p[0]) * 16 + FUNC1 (p[1]);
      tb[0] = c;
      tb[1] = 0;
      FUNC0 (tb, gdb_stdtarg);
    }
  FUNC2 (gdb_stdtarg);
}