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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct rrset_parse {scalar_t__ type; int hash; TYPE_1__* rr_last; scalar_t__ rr_first; TYPE_1__* rrsig_last; scalar_t__ rrsig_first; scalar_t__ rr_count; int /*<<< orphan*/  rrsig_count; int /*<<< orphan*/  flags; struct rrset_parse* rrset_bucket_next; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  dname_len; int /*<<< orphan*/  dname; } ;
struct regional {int dummy; } ;
struct msg_parse {scalar_t__ qtype; struct rrset_parse** hashtable; int /*<<< orphan*/  ar_rrsets; int /*<<< orphan*/  ns_rrsets; int /*<<< orphan*/  an_rrsets; } ;
typedef  int const sldns_pkt_section ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int hashvalue_type ;
struct TYPE_2__ {scalar_t__ next; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_ANY ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
#define  LDNS_SECTION_ADDITIONAL 130 
#define  LDNS_SECTION_ANSWER 129 
#define  LDNS_SECTION_AUTHORITY 128 
 int PARSE_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct msg_parse*,struct rrset_parse*,int const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct regional*,struct rrset_parse*,struct rrset_parse*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msg_parse*,struct rrset_parse*) ; 
 struct rrset_parse* FUNC4 (struct msg_parse*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int const,struct regional*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rrset_parse*
FUNC6(struct rrset_parse* sigset, struct msg_parse* msg, 
	sldns_buffer* pkt, uint16_t datatype, uint32_t rrset_flags,
	int hasother, sldns_pkt_section section, struct regional* region)
{
	struct rrset_parse* dataset = sigset;
	hashvalue_type hash = FUNC5(pkt, sigset->dname, datatype, 
		sigset->rrset_class, rrset_flags);
	FUNC1( sigset->type == LDNS_RR_TYPE_RRSIG );
	FUNC1( datatype != LDNS_RR_TYPE_RRSIG );
	if(hasother) {
		/* need to make new rrset to hold data type */
		dataset = FUNC4(msg, sigset->dname, sigset->dname_len, 
			datatype, sigset->rrset_class, hash, rrset_flags, 
			section, region);
		if(!dataset) 
			return NULL;
		switch(section) {
			case LDNS_SECTION_ANSWER: msg->an_rrsets++; break;
			case LDNS_SECTION_AUTHORITY: msg->ns_rrsets++; break;
			case LDNS_SECTION_ADDITIONAL: msg->ar_rrsets++; break;
			default: FUNC1(0);
		}
		if(!FUNC2(pkt, region, sigset, dataset, 
			msg->qtype == LDNS_RR_TYPE_RRSIG ||
			(msg->qtype == LDNS_RR_TYPE_ANY &&
			section != LDNS_SECTION_ANSWER) ))
			return NULL;
		return dataset;
	}
	/* changeover the type of the rrset to data set */
	FUNC3(msg, dataset);
	/* insert into new hash bucket */
	dataset->rrset_bucket_next = msg->hashtable[hash&(PARSE_TABLE_SIZE-1)];
	msg->hashtable[hash&(PARSE_TABLE_SIZE-1)] = dataset;
	dataset->hash = hash;
	/* use section of data item for result */
	FUNC0(msg, dataset, section);
	dataset->type = datatype;
	dataset->flags = rrset_flags;
	dataset->rrsig_count += dataset->rr_count;
	dataset->rr_count = 0;
	/* move sigs to end of siglist */
	if(dataset->rrsig_last)
		dataset->rrsig_last->next = dataset->rr_first;
	else	dataset->rrsig_first = dataset->rr_first;
	dataset->rrsig_last = dataset->rr_last;
	dataset->rr_first = 0;
	dataset->rr_last = 0;
	return dataset;
}