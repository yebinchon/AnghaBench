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
typedef  int /*<<< orphan*/  uint16_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int /*<<< orphan*/  lock; struct ta_key* keylist; int /*<<< orphan*/  numDNSKEY; int /*<<< orphan*/  numDS; } ;
struct ta_key {struct ta_key* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 struct trust_anchor* FUNC0 (struct val_anchors*,int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct trust_anchor*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 struct trust_anchor* FUNC2 (struct val_anchors*,int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ,int) ; 
 struct ta_key* FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static struct trust_anchor*
FUNC8(struct val_anchors* anchors, uint8_t* name, uint16_t type,
	uint16_t dclass, uint8_t* rdata, size_t rdata_len)
{
	struct ta_key* k;
	struct trust_anchor* ta;
	int namelabs;
	size_t namelen;
	namelabs = FUNC4(name, &namelen);
	if(type != LDNS_RR_TYPE_DS && type != LDNS_RR_TYPE_DNSKEY) {
		FUNC7("Bad type for trust anchor");
		return 0;
	}
	/* lookup or create trustanchor */
	ta = FUNC0(anchors, name, namelabs, namelen, dclass);
	if(!ta) {
		ta = FUNC2(anchors, name, namelabs, namelen, dclass, 1);
		if(!ta)
			return NULL;
		FUNC5(&ta->lock);
	}
	if(!rdata) {
		FUNC6(&ta->lock);
		return ta;
	}
	/* look for duplicates */
	if(FUNC1(ta, rdata, rdata_len, type)) {
		FUNC6(&ta->lock);
		return ta;
	}
	k = FUNC3(rdata, rdata_len, type);
	if(!k) {
		FUNC6(&ta->lock);
		return NULL;
	}
	/* add new key */
	if(type == LDNS_RR_TYPE_DS)
		ta->numDS++;
	else	ta->numDNSKEY++;
	k->next = ta->keylist;
	ta->keylist = k;
	FUNC6(&ta->lock);
	return ta;
}