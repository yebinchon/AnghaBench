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
typedef  int /*<<< orphan*/  ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr ;

/* Variables and functions */
#define  LDNS_RR_TYPE_NSEC 129 
#define  LDNS_RR_TYPE_NSEC3 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int) ; 

bool
FUNC4(const ldns_rr *nsec, ldns_rr_type t)
{
	switch (FUNC1(nsec)) {
	case LDNS_RR_TYPE_NSEC	: if (FUNC2(nsec) < 2) {
					  return false;
				  }
				  return FUNC0(
						  FUNC3(nsec, 1), t);

	case LDNS_RR_TYPE_NSEC3	: if (FUNC2(nsec) < 6) {
					  return false;
				  }
				  return FUNC0(
						  FUNC3(nsec, 5), t);

	default			: return false;
	}
}