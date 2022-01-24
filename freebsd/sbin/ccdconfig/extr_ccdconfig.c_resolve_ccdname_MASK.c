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
 char* _PATH_DEV ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(char *name)
{

	if (!FUNC2(name, _PATH_DEV, FUNC1(_PATH_DEV)))
		name += FUNC1(_PATH_DEV);
	if (FUNC2(name, "ccd", 3))
		return -1;
	name += 3;
	if (!FUNC0(*name))
		return -1;
	return (FUNC3(name, NULL, 10));
}