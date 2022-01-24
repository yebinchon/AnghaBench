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
struct url_stat {int dummy; } ;
struct url {int /*<<< orphan*/  offset; int /*<<< orphan*/  doc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct url*,struct url_stat*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

FILE *
FUNC5(struct url *u, struct url_stat *us, const char *flags)
{
	FILE *f;

	if (us && FUNC1(u, us, flags) == -1)
		return (NULL);

	f = FUNC3(u->doc, "re");

	if (f == NULL) {
		FUNC2();
		return (NULL);
	}

	if (u->offset && FUNC4(f, u->offset, SEEK_SET) == -1) {
		FUNC0(f);
		FUNC2();
		return (NULL);
	}

	return (f);
}