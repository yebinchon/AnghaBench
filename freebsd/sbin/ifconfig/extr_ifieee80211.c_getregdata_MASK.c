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
struct regdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct regdata* FUNC1 () ; 

__attribute__((used)) static struct regdata *
FUNC2(void)
{
	static struct regdata *rdp = NULL;
	if (rdp == NULL) {
		rdp = FUNC1();
		if (rdp == NULL)
			FUNC0(-1, "missing or corrupted regdomain database");
	}
	return rdp;
}