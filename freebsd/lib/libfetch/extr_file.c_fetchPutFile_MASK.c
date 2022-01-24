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
struct url {int /*<<< orphan*/  offset; int /*<<< orphan*/  doc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

FILE *
FUNC5(struct url *u, const char *flags)
{
	FILE *f;

	if (FUNC0('a'))
		f = FUNC3(u->doc, "ae");
	else
		f = FUNC3(u->doc, "w+e");

	if (f == NULL) {
		FUNC2();
		return (NULL);
	}

	if (u->offset && FUNC4(f, u->offset, SEEK_SET) == -1) {
		FUNC1(f);
		FUNC2();
		return (NULL);
	}

	return (f);
}