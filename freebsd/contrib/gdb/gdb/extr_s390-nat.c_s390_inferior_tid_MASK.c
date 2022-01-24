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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 

__attribute__((used)) static int
FUNC2 (void)
{
  /* GNU/Linux LWP ID's are process ID's.  */
  int tid = FUNC1 (inferior_ptid);
  if (tid == 0)
    tid = FUNC0 (inferior_ptid); /* Not a threaded program.  */

  return tid;
}