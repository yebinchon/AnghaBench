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
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 

bool
FUNC5(const ldns_resolver *r, ldns_rr_list * keys, ldns_rr_list * trusted_keys)
{
  size_t i;
  bool result = false;

  ldns_rr_list * trust_anchors;
  ldns_rr * cur_rr;

  if (!r || !keys) { return false; }

  trust_anchors = FUNC0(r);

  if (!trust_anchors) { return false; }

  for (i = 0; i < FUNC4(keys); i++) {

    cur_rr = FUNC3(keys, i);
    if (FUNC1(trust_anchors, cur_rr)) {
      if (trusted_keys) { FUNC2(trusted_keys, cur_rr); }
      result = true;
    }
  }

  return result;
}