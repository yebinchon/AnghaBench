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
struct dpp_global {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const*) ; 
 int FUNC1 (struct dpp_global*,unsigned int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

int FUNC3(struct dpp_global *dpp, const char *id)
{
	unsigned int id_val;

	if (FUNC2(id, "*") == 0) {
		id_val = 0;
	} else {
		id_val = FUNC0(id);
		if (id_val == 0)
			return -1;
	}

	return FUNC1(dpp, id_val);
}