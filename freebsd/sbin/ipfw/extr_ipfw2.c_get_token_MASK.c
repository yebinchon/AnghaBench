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
struct _s_x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*,char const*) ; 
 int FUNC1 (struct _s_x*,char const*) ; 

int
FUNC2(struct _s_x *table, const char *string, const char *errbase)
{
	int tcmd;

	if ((tcmd = FUNC1(table, string)) < 0)
		FUNC0(EX_USAGE, "%s %s %s",
		    (tcmd == 0) ? "invalid" : "ambiguous", errbase, string);

	return (tcmd);
}