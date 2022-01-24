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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char**,size_t*,char*,...) ; 

int FUNC3(char** s, size_t* sl, uint8_t* data,
	size_t len)
{
	uint32_t lease;
	int w = 0;
	if(len != 4) {
		w += FUNC2(s, sl, "malformed UL ");
		w += FUNC0(s, sl, data, len);
		return w;
	}
	lease = FUNC1(data);
	w += FUNC2(s, sl, "lease %lu", (unsigned long)lease);
	return w;
}