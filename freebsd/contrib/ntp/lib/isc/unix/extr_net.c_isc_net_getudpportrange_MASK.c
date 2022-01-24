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
typedef  int isc_result_t ;
typedef  int /*<<< orphan*/  in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_NET_PORTRANGEHIGH ; 
 int /*<<< orphan*/  ISC_NET_PORTRANGELOW ; 
 int ISC_R_FAILURE ; 
 int ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

isc_result_t
FUNC3(int af, in_port_t *low, in_port_t *high) {
	int result = ISC_R_FAILURE;

	FUNC0(low != NULL && high != NULL);

#if defined(USE_SYSCTL_PORTRANGE)
	result = getudpportrange_sysctl(af, low, high);
#else
	FUNC1(af);
#endif

	if (result != ISC_R_SUCCESS) {
		*low = ISC_NET_PORTRANGELOW;
		*high = ISC_NET_PORTRANGEHIGH;
	}

	return (ISC_R_SUCCESS);	/* we currently never fail in this function */
}