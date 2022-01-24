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
struct ub_packed_rrset_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ub_packed_rrset_key*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,int) ; 
 scalar_t__ FUNC2 (struct ub_packed_rrset_key*) ; 

__attribute__((used)) static int
FUNC3(struct ub_packed_rrset_key* s)
{
	int r;
	for(r=0; r < (int)FUNC2(s); r++) {
		if(!FUNC1(s, r) && FUNC0(s, r))
			return 1;
	}
	return 0;
}