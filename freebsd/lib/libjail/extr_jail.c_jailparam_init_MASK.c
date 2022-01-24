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
struct jailparam {int /*<<< orphan*/ * jp_value; int /*<<< orphan*/ * jp_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  JAIL_ERRMSGLEN ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  jail_errmsg ; 
 int /*<<< orphan*/  FUNC0 (struct jailparam*,int) ; 
 scalar_t__ FUNC1 (struct jailparam*) ; 
 int /*<<< orphan*/  FUNC2 (struct jailparam*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct jailparam *jp, const char *name)
{

	FUNC2(jp, 0, sizeof(*jp));
	jp->jp_name = FUNC3(name);
	if (jp->jp_name == NULL) {
		FUNC4(errno, jail_errmsg, JAIL_ERRMSGLEN);
		return (-1);
	}
	if (FUNC1(jp) < 0) {
		FUNC0(jp, 1);
		jp->jp_name = NULL;
		jp->jp_value = NULL;
		return (-1);
	}
	return (0);
}