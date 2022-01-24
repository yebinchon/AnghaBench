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
struct archive_read {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 void* FUNC0 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const void *
FUNC1(struct archive_read *a, size_t min, ssize_t *avail)
{
	const void *p;

	while (min > 0) {
		p = FUNC0(a, min, avail);
		if (p != NULL)
			return (p);
		min--;
	}
	return (NULL);
}