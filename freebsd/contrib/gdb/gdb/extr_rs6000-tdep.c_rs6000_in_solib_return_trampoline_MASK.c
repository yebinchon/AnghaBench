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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

int
FUNC1 (CORE_ADDR pc, char *name)
{
  return name && !FUNC0 (name, "@FIX", 4);
}