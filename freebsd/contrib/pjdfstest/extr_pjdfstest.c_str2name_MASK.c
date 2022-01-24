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
struct name {int n_name; int /*<<< orphan*/ * n_str; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC1(struct name *names, char *name)
{
	unsigned int i;

	for (i = 0; names[i].n_str != NULL; i++) {
		if (FUNC0(names[i].n_str, name) == 0)
			return (names[i].n_name);
	}
	return (-1);
}