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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_status
FUNC6(ldns_resolver *r, ldns_rr *rr)
{
  ldns_rr_list * trust_anchors;

  if ((!rr) || (FUNC3(rr) != LDNS_RR_TYPE_DNSKEY &&
                FUNC3(rr) != LDNS_RR_TYPE_DS)) {

    return LDNS_STATUS_ERR;
  }

  if (!(trust_anchors = FUNC0(r))) { /* Initialize */
    trust_anchors = FUNC4();
    FUNC1(r, trust_anchors);
  }

  return (FUNC5(trust_anchors, FUNC2(rr))) ? LDNS_STATUS_OK : LDNS_STATUS_ERR;
}