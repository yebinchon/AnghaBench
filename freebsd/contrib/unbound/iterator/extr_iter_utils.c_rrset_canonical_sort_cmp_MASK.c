#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ type; scalar_t__ rrset_class; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int
FUNC2(const void* x, const void* y)
{
	struct ub_packed_rrset_key* rrx = *(struct ub_packed_rrset_key**)x;
	struct ub_packed_rrset_key* rry = *(struct ub_packed_rrset_key**)y;
	int r = FUNC0(rrx->rk.dname, rry->rk.dname);
	if(r != 0)
		return r;
	if(rrx->rk.type != rry->rk.type) {
		if(FUNC1(rrx->rk.type) > FUNC1(rry->rk.type))
			return 1;
		else	return -1;
	}
	if(rrx->rk.rrset_class != rry->rk.rrset_class) {
		if(FUNC1(rrx->rk.rrset_class) > FUNC1(rry->rk.rrset_class))
			return 1;
		else	return -1;
	}
	return 0;
}