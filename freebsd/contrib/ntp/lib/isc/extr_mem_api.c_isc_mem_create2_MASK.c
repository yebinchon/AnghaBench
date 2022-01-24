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
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  createlock ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t,int /*<<< orphan*/ **,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t,int /*<<< orphan*/ **,unsigned int) ; 

isc_result_t
FUNC5(size_t init_max_size, size_t target_size, isc_mem_t **mctxp,
		unsigned int flags)
{
	isc_result_t result;

	FUNC0(&createlock);

	FUNC1(&mem_createfunc != NULL);
	result = FUNC3)(init_max_size, target_size, mctxp, flags);

	FUNC2(&createlock);

	return (result);
}