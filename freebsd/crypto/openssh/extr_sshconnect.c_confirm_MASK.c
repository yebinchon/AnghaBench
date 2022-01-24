#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ batch_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  RP_ECHO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ options ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(const char *prompt)
{
	const char *msg, *again = "Please type 'yes' or 'no': ";
	char *p;
	int ret = -1;

	if (options.batch_mode)
		return 0;
	for (msg = prompt;;msg = again) {
		p = FUNC1(msg, RP_ECHO);
		if (p == NULL)
			return 0;
		p[FUNC3(p, "\n")] = '\0';
		if (p[0] == '\0' || FUNC2(p, "no") == 0)
			ret = 0;
		else if (FUNC2(p, "yes") == 0)
			ret = 1;
		FUNC0(p);
		if (ret != -1)
			return ret;
	}
}