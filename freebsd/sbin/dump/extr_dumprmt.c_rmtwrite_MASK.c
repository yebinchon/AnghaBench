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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  rmtape ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC4(const char *buf, int count)
{
	char line[30];

	(void)FUNC1(line, sizeof (line), "W%d\n", count);
	FUNC3(rmtape, line, FUNC2(line));
	FUNC3(rmtape, buf, count);
	return (FUNC0("write"));
}