#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_7__ {int /*<<< orphan*/  result; TYPE_1__* buf6; scalar_t__ pos6; } ;
typedef  TYPE_2__ isc_interfaceiter_t ;
struct TYPE_6__ {scalar_t__ iAddressCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  use_GAA ; 
 int /*<<< orphan*/  use_GAA_determined ; 

isc_result_t
FUNC3(isc_interfaceiter_t *iter) {
	FUNC0(FUNC1(iter));
	FUNC0(use_GAA_determined);
	/*
	 * SIO_ADDRESS_LIST_QUERY (used to query IPv6 addresses)
	 * intentionally omits localhost addresses [::1] and [::fe80] in
	 * some cases.  ntpd depends on enumerating [::1] to listen on
	 * it, and ntpq and ntpdc default to "localhost" as the target,
	 * so they will attempt to talk to [::1]:123 and fail. This
	 * means we need to synthesize ::1, which we will do first,
	 * hence iAddressCount + 1.  internal_next6() will decrement
	 * it before the first use as an index, and internal_current6()
	 * will treat pos6 == iAddressCount as a sign to synthesize
	 * [::1] if needed.
	 */
	if (!use_GAA && iter->buf6 != NULL)
		iter->pos6 = iter->buf6->iAddressCount + 1;
	iter->result = ISC_R_SUCCESS;
	return (FUNC2(iter));
}