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
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 scalar_t__ LDNS_STATUS_NO_DATA ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ldns_status
FUNC7(
		ldns_rr_list *rrset, 
		ldns_rr *rrsig, 
		ldns_rr *key, 
		time_t check_time)
{
	ldns_buffer *rawsig_buf;
	ldns_buffer *verify_buf;
	ldns_status result;
	ldns_rr_list *rrset_clone;

	if (!rrset) {
		return LDNS_STATUS_NO_DATA;
	}
	/* clone the rrset so that we can fiddle with it */
	rrset_clone = FUNC3(rrset);
	/* create the buffers which will certainly hold the raw data */
	rawsig_buf = FUNC1(LDNS_MAX_PACKETLEN);
	verify_buf  = FUNC1(LDNS_MAX_PACKETLEN);

	result = FUNC2(rawsig_buf, verify_buf, 
		rrset_clone, rrsig);
	if(result != LDNS_STATUS_OK) {
		FUNC4(rrset_clone);
		FUNC0(rawsig_buf);
		FUNC0(verify_buf);
		return result;
	}
	result = FUNC6(rawsig_buf, verify_buf, 
		rrsig, key);
	/* no longer needed */
	FUNC4(rrset_clone);
	FUNC0(rawsig_buf);
	FUNC0(verify_buf);

	/* check timestamp last, apart from time its OK */
	if(result == LDNS_STATUS_OK)
		result = FUNC5(rrsig, check_time);

	return result;
}