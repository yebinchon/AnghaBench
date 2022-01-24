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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int) ; 

void
FUNC2 (ucl_object_t *comments, const ucl_object_t *obj,
		const char *comment)
{
	if (comments && obj && comment) {
		FUNC1 (comments, FUNC0 (comment),
				(const char *)&obj, sizeof (void *), true);
	}
}