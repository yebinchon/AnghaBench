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
 int HN_AUTOSCALE ; 
 int HN_GETSCALE ; 
 int /*<<< orphan*/  MAX_INT_STR_DIGITS ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (int,char*) ; 

__attribute__((used)) static char *
FUNC3(int scale) {
	char *result;

	if (scale == HN_AUTOSCALE || scale == HN_GETSCALE)
		return FUNC2(scale, "");

	result = FUNC0(MAX_INT_STR_DIGITS);
	result[0] = '\0';
	FUNC1(result, MAX_INT_STR_DIGITS, "%d", scale);
	return result;
}