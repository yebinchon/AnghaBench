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
typedef  int /*<<< orphan*/  ucl_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 

bool
FUNC4 (ucl_object_t *comments,
		const ucl_object_t *from, const ucl_object_t *to)
{
	const ucl_object_t *found;
	ucl_object_t *obj;

	if (comments && from && to) {
		found = FUNC2 (comments,
				(const char *)&from, sizeof (void *));

		if (found) {
			/* Replace key */
			obj = FUNC3 (found);
			FUNC0 (comments, (const char *)&from,
					sizeof (void *));
			FUNC1 (comments, obj, (const char *)&to,
					sizeof (void *), true);

			return true;
		}
	}

	return false;
}