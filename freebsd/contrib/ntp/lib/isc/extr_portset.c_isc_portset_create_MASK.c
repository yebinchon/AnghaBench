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
typedef  int /*<<< orphan*/  isc_portset_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

isc_result_t
FUNC3(isc_mem_t *mctx, isc_portset_t **portsetp) {
	isc_portset_t *portset;

	FUNC0(portsetp != NULL && *portsetp == NULL);

	portset = FUNC1(mctx, sizeof(*portset));
	if (portset == NULL)
		return (ISC_R_NOMEMORY);

	/* Make the set 'empty' by default */
	FUNC2(portset, 0, sizeof(*portset));
	*portsetp = portset;

	return (ISC_R_SUCCESS);
}