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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int,int*,char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	char	 buf[16];
	int	 len, width;

	width = 1;
	FUNC3("utf8_badarg");
	len = FUNC4(buf, sizeof(buf), &width, "\377");
	FUNC0(len, -1);
	FUNC1(buf, "");
	FUNC0(width, 0);
	FUNC2();
}