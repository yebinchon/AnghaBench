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
struct policyhead {int dummy; } ;
struct ai_order {int aio_initial_sequence; struct addrinfo* aio_ai; int /*<<< orphan*/  aio_dstpolicy; int /*<<< orphan*/  aio_dstscope; } ;
struct addrinfo {struct addrinfo* ai_next; int /*<<< orphan*/  ai_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct policyhead*) ; 
 struct ai_order* FUNC1 (int,int) ; 
 int /*<<< orphan*/  comp_dst ; 
 int /*<<< orphan*/  FUNC2 (struct ai_order*) ; 
 int /*<<< orphan*/  FUNC3 (struct policyhead*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct policyhead*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct policyhead*) ; 
 int /*<<< orphan*/  FUNC7 (struct ai_order*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ai_order*,struct policyhead*) ; 

__attribute__((used)) static int
FUNC9(struct addrinfo *sentinel)
{
	struct addrinfo *ai, **aip;
	struct ai_order *aio;
	int i, n;
	struct policyhead policyhead;

	/* count the number of addrinfo elements for sorting. */
	for (n = 0, ai = sentinel->ai_next; ai != NULL; ai = ai->ai_next, n++)
		;

	/*
	 * If the number is small enough, we can skip the reordering process.
	 */
	if (n <= 1)
		return(n);

	/* allocate a temporary array for sort and initialization of it. */
	if ((aio = FUNC1(n, sizeof(*aio))) == NULL)
		return(n);	/* give up reordering */

	/* retrieve address selection policy from the kernel */
	FUNC0(&policyhead);
	if (!FUNC5(&policyhead)) {
		/* no policy is installed into kernel, we don't sort. */
		FUNC2(aio);
		return (n);
	}

	for (i = 0, ai = sentinel->ai_next; i < n; ai = ai->ai_next, i++) {
		aio[i].aio_ai = ai;
		aio[i].aio_dstscope = FUNC4(ai->ai_addr);
		aio[i].aio_dstpolicy = FUNC6(ai->ai_addr,
							      &policyhead);
		FUNC8(&aio[i], &policyhead);
		aio[i].aio_initial_sequence = i;
	}

	/* perform sorting. */
	FUNC7(aio, n, sizeof(*aio), comp_dst);

	/* reorder the addrinfo chain. */
	for (i = 0, aip = &sentinel->ai_next; i < n; i++) {
		*aip = aio[i].aio_ai;
		aip = &aio[i].aio_ai->ai_next;
	}
	*aip = NULL;

	/* cleanup and return */
	FUNC2(aio);
	FUNC3(&policyhead);
	return(n);
}