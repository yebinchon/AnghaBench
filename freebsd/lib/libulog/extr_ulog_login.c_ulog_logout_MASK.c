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
struct utmpx {int /*<<< orphan*/  ut_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEAD_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (struct utmpx*) ; 
 int /*<<< orphan*/  FUNC1 (struct utmpx*,char const*) ; 

void
FUNC2(const char *line)
{
	struct utmpx utx;

	FUNC1(&utx, line);
	utx.ut_type = DEAD_PROCESS;
	FUNC0(&utx);
}