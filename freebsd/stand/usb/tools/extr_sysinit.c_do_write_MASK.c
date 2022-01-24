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
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int,char const*,int) ; 

__attribute__((used)) static void
FUNC3(int fd, const char *buf)
{
	int len = FUNC1(buf);

	if (FUNC2(fd, buf, len) != len)
		FUNC0(EX_SOFTWARE, "Could not write to output file");
}