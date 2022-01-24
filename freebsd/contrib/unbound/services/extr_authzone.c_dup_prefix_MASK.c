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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static char*
FUNC4(char* str, size_t num)
{
	char* result;
	size_t len = FUNC3(str);
	if(len < num) num = len; /* not more than strlen */
	result = (char*)FUNC1(num+1);
	if(!result) {
		FUNC0("malloc failure");
		return result;
	}
	FUNC2(result, str, num);
	result[num] = 0;
	return result;
}