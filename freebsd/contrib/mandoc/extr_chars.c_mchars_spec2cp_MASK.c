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
struct ln {int unicode; } ;

/* Variables and functions */
 int /*<<< orphan*/  mchars ; 
 struct ln* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const**) ; 

int
FUNC2(const char *p, size_t sz)
{
	const struct ln	*ln;
	const char	*end;

	end = p + sz;
	ln = FUNC0(&mchars, FUNC1(&mchars, p, &end));
	return ln != NULL ? ln->unicode : -1;
}