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
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; } ;
typedef  enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,size_t,int /*<<< orphan*/ ,char*,int) ; 
 int verbosity ; 

void FUNC2(enum verbosity_value v, const char* str,
	struct ub_packed_rrset_key* rrset)
{
	struct packed_rrset_data* d = (struct packed_rrset_data*)rrset->
		entry.data;
	char buf[65535];
	size_t i;
	if(verbosity < v)
		return;
	for(i=0; i<d->count+d->rrsig_count; i++) {
		if(!FUNC1(rrset, i, 0, buf, sizeof(buf))) {
			FUNC0("%s: rr %d wire2str-error", str, (int)i);
		} else {
			FUNC0("%s: %s", str, buf);
		}
	}
}