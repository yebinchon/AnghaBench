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
typedef  int returns_enum_t ;

/* Variables and functions */
 size_t WRITE_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * slvpipe ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC2(returns_enum_t return_type)
{
	int type;

	type = return_type;
	if (FUNC1(slvpipe[WRITE_PIPE], &type, sizeof(int)) < 0)
		FUNC0(1, "command pipe write for status type failed");

}