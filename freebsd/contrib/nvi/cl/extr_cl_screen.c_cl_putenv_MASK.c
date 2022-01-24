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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(char *name, char *str, u_long value)
{
	char buf[40];

	if (str == NULL) {
		(void)FUNC1(buf, sizeof(buf), "%lu", value);
		return (FUNC0(name, buf, 1));
	} else
		return (FUNC0(name, str, 1));
}