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
struct reply_info {scalar_t__ an_numrrsets; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ qtype; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct msgreply_entry {TYPE_1__ key; TYPE_2__ entry; } ;
struct delegpt_ns {int got4; int got6; int resolved; } ;
struct delegpt {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 struct delegpt_ns* FUNC1 (struct delegpt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct delegpt* dp, struct msgreply_entry* msg)
{
	struct reply_info* rep = (struct reply_info*)msg->entry.data;
	if(!rep) return;

	/* if error or no answers */
	if(FUNC0(rep->flags) != 0 || rep->an_numrrsets == 0) {
		struct delegpt_ns* ns = FUNC1(dp, msg->key.qname, 
			msg->key.qname_len);
		if(ns) {
			if(msg->key.qtype == LDNS_RR_TYPE_A)
				ns->got4 = 1;
			else if(msg->key.qtype == LDNS_RR_TYPE_AAAA)
				ns->got6 = 1;
			if(ns->got4 && ns->got6)
				ns->resolved = 1;
		}
	}
}