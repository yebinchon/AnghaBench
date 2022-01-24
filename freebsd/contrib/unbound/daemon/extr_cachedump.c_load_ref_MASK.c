#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * now; int /*<<< orphan*/  rrset_cache; } ;
struct worker {TYPE_1__ env; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; } ;
struct regional {int dummy; } ;
struct query_info {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 char* FUNC0 (char*,struct query_info*,struct regional*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 struct ub_packed_rrset_key* FUNC3 (struct ub_packed_rrset_key*,struct regional*,int /*<<< orphan*/ ) ; 
 struct ub_packed_rrset_key* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC9(RES* ssl, sldns_buffer* buf, struct worker* worker, 
	struct regional *region, struct ub_packed_rrset_key** rrset, 
	int* go_on)
{
	char* s = (char*)FUNC5(buf);
	struct query_info qinfo;
	unsigned int flags;
	struct ub_packed_rrset_key* k;

	/* read line */
	if(!FUNC7(ssl, buf))
		return 0;
	if(FUNC8(s, "BADREF", 6) == 0) {
		*go_on = 0; /* its bad, skip it and skip message */
		return 1;
	}

	s = FUNC0(s, &qinfo, region);
	if(!s) {
		return 0;
	}
	if(FUNC6(s, " %u", &flags) != 1) {
		FUNC2("error cannot parse flags: %s", s);
		return 0;
	}

	/* lookup in cache */
	k = FUNC4(worker->env.rrset_cache, qinfo.qname,
		qinfo.qname_len, qinfo.qtype, qinfo.qclass,
		(uint32_t)flags, *worker->env.now, 0);
	if(!k) {
		/* not found or expired */
		*go_on = 0;
		return 1;
	}

	/* store in result */
	*rrset = FUNC3(k, region, *worker->env.now);
	FUNC1(&k->entry.lock);

	return (*rrset != NULL);
}