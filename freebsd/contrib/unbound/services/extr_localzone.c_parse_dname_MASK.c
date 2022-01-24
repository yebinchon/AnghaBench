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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,size_t*) ; 

int
FUNC3(const char* str, uint8_t** res, size_t* len, int* labs)
{
	*res = FUNC2(str, len);
	*labs = 0;
	if(!*res) {
		FUNC1("cannot parse name %s", str);
		return 0;
	}
	*labs = FUNC0(*res, len);
	return 1;
}