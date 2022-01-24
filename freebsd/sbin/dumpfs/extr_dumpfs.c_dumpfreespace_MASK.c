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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *name, int fflag)
{
	int i;

	while ((i = FUNC0(&disk)) != 0) {
		if (i == -1)
			goto err;
		FUNC1(fflag);
	}
	return (0);
err:
	FUNC2(name);
	return (1);
}