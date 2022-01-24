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
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

const char *
FUNC2(void)
{
  const char *expat_version = FUNC0();

  if (!FUNC1(expat_version, "expat_", 6))
    expat_version += 6;

  return expat_version;
}