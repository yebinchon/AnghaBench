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

/* Variables and functions */
 char* FUNC0 (struct archive_read*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct archive_read*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(struct archive_read *a, int best_bid)
{
	const char *signature = "#mtree";
	const char *p;

	(void)best_bid; /* UNUSED */

	/* Now let's look at the actual header and see if it matches. */
	p = FUNC0(a, FUNC3(signature), NULL);
	if (p == NULL)
		return (-1);

	if (FUNC2(p, signature, FUNC3(signature)) == 0)
		return (8 * (int)FUNC3(signature));

	/*
	 * There is not a mtree signature. Let's try to detect mtree format.
	 */
	return (FUNC1(a, NULL));
}