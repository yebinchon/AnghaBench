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
typedef  int /*<<< orphan*/  hash_data ;
typedef  int /*<<< orphan*/  br_x509_certificate ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(void)
{
	br_x509_certificate *xcs;
	hash_data *digests;
	size_t num;
	int result;
	static int once = 0;

	if (once > 0)
		return;

	once = 1;

	result = FUNC3();
	if (result <= 0)
		return;

	xcs = FUNC2(&num);
	if (num > 0 && xcs != NULL) {
		num = FUNC7(xcs, num);
		FUNC4(xcs, num);
	}
	xcs = FUNC0(&num);
	if (num > 0 && xcs != NULL) {
		num = FUNC5(xcs, num);
		FUNC4(xcs, num);
	}
	digests = FUNC1(&num);
	if (num > 0 && digests != NULL) {
		FUNC6(digests, num);
		/*
		 * Don't free the buffors for digests,
		 * since they are shallow copied.
		 */
		FUNC8(digests);
	}

	return;
}