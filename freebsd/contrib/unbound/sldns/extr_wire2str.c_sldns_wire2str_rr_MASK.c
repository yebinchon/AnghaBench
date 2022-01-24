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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,char*,size_t) ; 

char* FUNC2(uint8_t* rr, size_t len)
{
	size_t slen = (size_t)FUNC1(rr, len, NULL, 0);
	char* result = (char*)FUNC0(slen+1);
	if(!result) return NULL;
	FUNC1(rr, len, result, slen+1);
	return result;
}