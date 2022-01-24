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
struct rrset_parse {scalar_t__ dname_len; int section; struct rrset_parse* rrset_all_next; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; int /*<<< orphan*/  dname; } ;
struct msg_parse {int /*<<< orphan*/  ar_rrsets; int /*<<< orphan*/  ns_rrsets; int /*<<< orphan*/  an_rrsets; int /*<<< orphan*/  rrset_count; struct rrset_parse* rrset_last; struct rrset_parse* rrset_first; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_MAX_DOMAINLEN ; 
#define  LDNS_SECTION_ADDITIONAL 130 
#define  LDNS_SECTION_ANSWER 129 
#define  LDNS_SECTION_AUTHORITY 128 
 scalar_t__ VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msg_parse*,struct rrset_parse*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static void
FUNC5(const char* str, sldns_buffer* pkt, struct msg_parse* msg, 
	struct rrset_parse* prev, struct rrset_parse** rrset)
{
	if(verbosity >= VERB_QUERY && str
		&& (*rrset)->dname_len <= LDNS_MAX_DOMAINLEN) {
		uint8_t buf[LDNS_MAX_DOMAINLEN+1];
		FUNC0(pkt, buf, (*rrset)->dname);
		FUNC2(VERB_QUERY, str, buf, 
			(*rrset)->type, FUNC4((*rrset)->rrset_class));
	}
	if(prev)
		prev->rrset_all_next = (*rrset)->rrset_all_next;
	else	msg->rrset_first = (*rrset)->rrset_all_next;
	if(msg->rrset_last == *rrset)
		msg->rrset_last = prev;
	msg->rrset_count --;
	switch((*rrset)->section) {
		case LDNS_SECTION_ANSWER: msg->an_rrsets--; break;
		case LDNS_SECTION_AUTHORITY: msg->ns_rrsets--; break;
		case LDNS_SECTION_ADDITIONAL: msg->ar_rrsets--; break;
		default: FUNC1(0);
	}
	FUNC3(msg, *rrset);
	*rrset = (*rrset)->rrset_all_next;
}