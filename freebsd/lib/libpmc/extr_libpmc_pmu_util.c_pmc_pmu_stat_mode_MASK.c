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
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 () ; 
 char** stat_mode_cntrs ; 

int
FUNC1(const char ***cntrs)
{
	if (FUNC0()) {
		*cntrs = stat_mode_cntrs;
		return (0);
	}
	return (EOPNOTSUPP);
}