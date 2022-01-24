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
struct mntopt {char* m_option; scalar_t__ m_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct mntopt* mopts ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(void)
{
	struct mntopt *mo;

	FUNC0();

	FUNC2(stderr, "known options:\n");
	for (mo = mopts; mo->m_flag; ++mo)
		FUNC2(stderr, "\t%s\n", mo->m_option);

	FUNC2(stderr, "\n(use -h for a detailed description of these options)\n");
	FUNC1(EX_USAGE);
}