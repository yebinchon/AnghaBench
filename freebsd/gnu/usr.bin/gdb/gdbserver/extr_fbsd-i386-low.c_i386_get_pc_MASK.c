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
typedef  unsigned long CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long*) ; 
 scalar_t__ debug_threads ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static CORE_ADDR
FUNC2 ()
{
  unsigned long pc;

  FUNC0 ("eip", &pc);

  if (debug_threads)
    FUNC1 (stderr, "stop pc (before any decrement) is %08lx\n", pc);
  return pc;
}