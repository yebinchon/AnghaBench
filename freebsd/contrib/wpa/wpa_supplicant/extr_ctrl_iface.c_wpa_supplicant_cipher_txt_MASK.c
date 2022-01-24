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
 int FUNC0 (char*,int,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (char*,char*,int,char*) ; 

__attribute__((used)) static char * FUNC3(char *pos, char *end, int cipher)
{
	int ret;
	ret = FUNC0(pos, end - pos, "-");
	if (FUNC1(end - pos, ret))
		return pos;
	pos += ret;
	ret = FUNC2(pos, end, cipher, "+");
	if (ret < 0)
		return pos;
	pos += ret;
	return pos;
}