#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct reply_info {size_t an_numrrsets; int ns_numrrsets; TYPE_3__** rrsets; } ;
struct packed_rrset_data {scalar_t__ rrsig_count; } ;
struct TYPE_5__ {int /*<<< orphan*/  dname; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ rk; TYPE_1__ entry; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct reply_info*,size_t) ; 

__attribute__((used)) static void
FUNC4(struct reply_info* chase_reply,
	struct reply_info* orig_reply)
{
	size_t i, found = 0;
	int remove = 0;
	/* if no answer and only 1 auth RRset, do not remove that one */
	if(chase_reply->an_numrrsets == 0 && chase_reply->ns_numrrsets == 1)
		return;
	/* search authority section for unsigned NS records */
	for(i = chase_reply->an_numrrsets;
		i < chase_reply->an_numrrsets+chase_reply->ns_numrrsets; i++) {
		struct packed_rrset_data* d = (struct packed_rrset_data*)
			chase_reply->rrsets[i]->entry.data;
		if(FUNC1(chase_reply->rrsets[i]->rk.type) == LDNS_RR_TYPE_NS
			&& d->rrsig_count == 0) {
			found = i;
			remove = 1;
			break;
		}
	}
	/* see if we found the entry */
	if(!remove) return;
	FUNC0(VERB_ALGO, "Removing spurious unsigned NS record "
		"(likely inserted by forwarder)", chase_reply->rrsets[found]);

	/* find rrset in orig_reply */
	for(i = orig_reply->an_numrrsets;
		i < orig_reply->an_numrrsets+orig_reply->ns_numrrsets; i++) {
		if(FUNC1(orig_reply->rrsets[i]->rk.type) == LDNS_RR_TYPE_NS
			&& FUNC2(orig_reply->rrsets[i]->rk.dname,
				chase_reply->rrsets[found]->rk.dname) == 0) {
			/* remove from orig_msg */
			FUNC3(orig_reply, i);
			break;
		}
	}
	/* remove rrset from chase_reply */
	FUNC3(chase_reply, found);
}