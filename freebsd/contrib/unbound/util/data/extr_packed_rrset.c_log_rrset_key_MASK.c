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
struct TYPE_2__ {int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
typedef  enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int verbosity ; 

void FUNC2(enum verbosity_value v, const char* str, 
	struct ub_packed_rrset_key* rrset)
{
	if(verbosity >= v)
		FUNC0(v, str, rrset->rk.dname,
			FUNC1(rrset->rk.type), FUNC1(rrset->rk.rrset_class));
}