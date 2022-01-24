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
struct reply_info {size_t rrset_count; size_t an_numrrsets; size_t ns_numrrsets; scalar_t__ rrsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 

void FUNC2(struct reply_info* rep, size_t index)
{
	FUNC0(index < rep->rrset_count);
	FUNC0(index >= rep->an_numrrsets);
	FUNC0(index < rep->an_numrrsets+rep->ns_numrrsets);
	FUNC1(rep->rrsets+index, rep->rrsets+index+1,
		sizeof(struct ub_packed_rrset_key*)*
		(rep->rrset_count - index - 1));
	rep->ns_numrrsets--;
	rep->rrset_count--;
}