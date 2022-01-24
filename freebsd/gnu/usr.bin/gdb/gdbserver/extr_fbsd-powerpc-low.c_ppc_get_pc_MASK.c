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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long*) ; 

__attribute__((used)) static CORE_ADDR
FUNC1 (void)
{
  unsigned long pc;

  FUNC0 ("pc", &pc);
  return (CORE_ADDR) pc;
}