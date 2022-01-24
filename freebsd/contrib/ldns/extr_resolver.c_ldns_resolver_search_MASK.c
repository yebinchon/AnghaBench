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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ldns_pkt *
FUNC2(const ldns_resolver *r,const  ldns_rdf *name,
	ldns_rr_type t, ldns_rr_class c, uint16_t flags)
{
	ldns_pkt* pkt = NULL;
	if (FUNC1(&pkt, (ldns_resolver *)r,
				name, t, c, flags) != LDNS_STATUS_OK) {
		FUNC0(pkt);
	}
	return pkt;
}