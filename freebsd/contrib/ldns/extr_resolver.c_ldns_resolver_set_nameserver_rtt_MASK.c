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
typedef  int /*<<< orphan*/  ldns_resolver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 size_t* FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(ldns_resolver *r, size_t pos, size_t value)
{
	size_t *rtt;

	FUNC0(r != NULL);

	rtt = FUNC2(r);

	if (pos >= FUNC1(r)) {
		/* error ?*/
	} else {
		rtt[pos] = value;
	}

}