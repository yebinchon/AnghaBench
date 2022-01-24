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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {size_t dname_len; int /*<<< orphan*/ * dname; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct nsec3_filter {size_t num; scalar_t__ fclass; struct ub_packed_rrset_key** list; int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_packed_rrset_key*,int) ; 
 scalar_t__ FUNC2 (struct ub_packed_rrset_key*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ub_packed_rrset_key*) ; 

__attribute__((used)) static struct ub_packed_rrset_key*
FUNC6(struct nsec3_filter* filter, size_t* rrsetnum, int* rrnum)
{
	size_t i;
	int r;
	uint8_t* nm;
	size_t nmlen;
	if(!filter->zone) /* empty list */
		return NULL;
	for(i=*rrsetnum; i<filter->num; i++) {
		/* see if RRset qualifies */
		if(FUNC3(filter->list[i]->rk.type) != LDNS_RR_TYPE_NSEC3 ||
			FUNC3(filter->list[i]->rk.rrset_class) != 
			filter->fclass) 
			continue;
		/* check RRset zone */
		nm = filter->list[i]->rk.dname;
		nmlen = filter->list[i]->rk.dname_len;
		FUNC0(&nm, &nmlen);
		if(FUNC4(nm, filter->zone) != 0)
			continue;
		if(i == *rrsetnum)
			r = (*rrnum) + 1; /* continue at next RR */
		else	r = 0;		/* new RRset start at first RR */
		for(; r < (int)FUNC5(filter->list[i]); r++) {
			/* skip unknown flags, algo */
			if(FUNC2(filter->list[i], r) ||
				!FUNC1(filter->list[i], r))
				continue;
			/* this one is a good target */
			*rrsetnum = i;
			*rrnum = r;
			return filter->list[i];
		}
	}
	return NULL;
}