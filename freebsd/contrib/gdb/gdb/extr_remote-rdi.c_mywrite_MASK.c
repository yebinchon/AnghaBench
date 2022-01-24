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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2 (void *arg, char const *buffer, int len)
{
  int i;
  char *e;

  e = (char *) buffer;
  for (i = 0; i < len; i++)
    {
      if (FUNC1 ((int) *e))
	{
	  FUNC0 ((int) *e, gdb_stdout);
	  e++;
	}
    }

  return len;
}