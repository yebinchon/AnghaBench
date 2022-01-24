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
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(ldns_rr* rr, ldns_rr_type t)
{
	return     FUNC1(rr) == LDNS_RR_TYPE_RRSIG
		&& FUNC0(FUNC2(rr)) == t;
}