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
typedef  int /*<<< orphan*/  uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ub_packed_rrset_key*,int) ; 
 size_t FUNC1 (struct ub_packed_rrset_key*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*,int,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct ub_packed_rrset_key*,int) ; 
 scalar_t__ FUNC4 (struct ub_packed_rrset_key*,int) ; 

int FUNC5(struct ub_packed_rrset_key* rrset, int r,
	int* algo, size_t* iter, uint8_t** salt, size_t* saltlen)
{
	if(!FUNC3(rrset, r) || FUNC4(rrset, r))
		return 0;
	if(!FUNC2(rrset, r, salt, saltlen))
		return 0;
	*algo = FUNC0(rrset, r);
	*iter = FUNC1(rrset, r);
	return 1;
}