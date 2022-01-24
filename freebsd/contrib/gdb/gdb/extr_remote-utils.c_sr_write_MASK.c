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
 int /*<<< orphan*/  FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5 (char *a, int l)
{
  int i;

  if (FUNC2 (FUNC4 (), a, l) != 0)
    FUNC0 ("sr_write: Error writing to remote");

  if (FUNC3 () > 0)
    for (i = 0; i < l; i++)
      FUNC1 ("%c", a[i]);

  return;
}