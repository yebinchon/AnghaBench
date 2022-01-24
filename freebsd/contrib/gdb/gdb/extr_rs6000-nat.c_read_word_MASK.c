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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_READ_I ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3 (CORE_ADDR from, int *to, int arch64)
{
  /* Retrieved values may be -1, so infer errors from errno. */
  errno = 0;

  if (arch64)
    *to = FUNC2 (PT_READ_I, FUNC0 (inferior_ptid), from, 0, NULL);
  else
    *to = FUNC1 (PT_READ_I, FUNC0 (inferior_ptid), (int *)(long) from,
                    0, NULL);

  return !errno;
}