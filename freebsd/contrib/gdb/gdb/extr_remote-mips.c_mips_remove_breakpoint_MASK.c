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
 int /*<<< orphan*/  BREAK_FETCH ; 
 int /*<<< orphan*/  MIPS_INSTLEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ monitor_supports_breakpoints ; 

__attribute__((used)) static int
FUNC2 (CORE_ADDR addr, char *contents_cache)
{
  if (monitor_supports_breakpoints)
    return FUNC0 (addr, MIPS_INSTLEN, BREAK_FETCH);
  else
    return FUNC1 (addr, contents_cache);
}