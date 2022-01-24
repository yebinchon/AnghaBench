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
typedef  int /*<<< orphan*/  time_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

ldns_status
FUNC5(
		const ldns_rr_list *rrset,
		const ldns_rr *rrsig,
		const ldns_rr_list *keys, 
		time_t check_time,
		ldns_rr_list *good_keys)
{
	ldns_status result;
	ldns_rr_list *valid = FUNC2();
	if (!valid)
		return LDNS_STATUS_MEM_ERR;

	result = FUNC4(rrset, rrsig, keys, valid);
	if(result != LDNS_STATUS_OK) {
		FUNC1(valid); 
		return result;
	}

	/* check timestamps last; its OK except time */
	result = FUNC3(rrsig, check_time);
	if(result != LDNS_STATUS_OK) {
		FUNC1(valid); 
		return result;
	}

	FUNC0(good_keys, valid);
	FUNC1(valid);
	return LDNS_STATUS_OK;
}