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
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
typedef  int /*<<< orphan*/  isc_entropy_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  createlock ; 
 int /*<<< orphan*/ * hash ; 
 int /*<<< orphan*/  initialize_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  once ; 

isc_result_t
FUNC7(isc_mem_t *mctx, isc_entropy_t *entropy, size_t limit) {
	isc_result_t result = ISC_R_SUCCESS;

	FUNC2(mctx != NULL);
	FUNC0(hash == NULL);

	FUNC3(FUNC6(&once, initialize_lock) == ISC_R_SUCCESS);

	FUNC1(&createlock);

	if (hash == NULL)
		result = FUNC5(mctx, entropy, limit, &hash);

	FUNC4(&createlock);

	return (result);
}