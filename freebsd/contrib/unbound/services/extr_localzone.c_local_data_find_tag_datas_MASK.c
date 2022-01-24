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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/ * time_t ;
struct TYPE_4__ {int /*<<< orphan*/ * dname; scalar_t__ flags; void* rrset_class; void* type; int /*<<< orphan*/  dname_len; } ;
struct TYPE_3__ {struct packed_rrset_data* data; struct ub_packed_rrset_key* key; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct query_info {scalar_t__ qtype; scalar_t__ qclass; int /*<<< orphan*/  qname_len; int /*<<< orphan*/ * qname; } ;
struct packed_rrset_data {size_t* rr_len; int count; int /*<<< orphan*/ ** rr_data; int /*<<< orphan*/ ** rr_ttl; void* ttl; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
typedef  int /*<<< orphan*/  rr ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int LDNS_RR_BUF_SIZE ; 
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct regional*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (struct regional*,int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,size_t,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 

int
FUNC10(const struct query_info* qinfo,
	struct config_strlist* list, struct ub_packed_rrset_key* r,
	struct regional* temp)
{
	struct config_strlist* p;
	char buf[65536];
	uint8_t rr[LDNS_RR_BUF_SIZE];
	size_t len;
	int res;
	struct packed_rrset_data* d;
	for(p=list; p; p=p->next) {
		uint16_t rdr_type;

		len = sizeof(rr);
		/* does this element match the type? */
		FUNC9(buf, sizeof(buf), ". %s", p->str);
		res = FUNC4(buf, rr, &len, NULL, 3600,
			NULL, 0, NULL, 0);
		if(res != 0)
			/* parse errors are already checked before, in
			 * acllist check_data, skip this for robustness */
			continue;
		if(len < 1 /* . */ + 8 /* typeclassttl*/ + 2 /*rdatalen*/)
			continue;
		rdr_type = FUNC8(rr, len, 1);
		if(rdr_type != qinfo->qtype && rdr_type != LDNS_RR_TYPE_CNAME)
			continue;
		
		/* do we have entries already? if not setup key */
		if(r->rk.dname == NULL) {
			r->entry.key = r;
			r->rk.dname = qinfo->qname;
			r->rk.dname_len = qinfo->qname_len;
			r->rk.type = FUNC0(rdr_type);
			r->rk.rrset_class = FUNC0(qinfo->qclass);
			r->rk.flags = 0;
			d = (struct packed_rrset_data*)FUNC3(
				temp, sizeof(struct packed_rrset_data)
				+ sizeof(size_t) + sizeof(uint8_t*) +
				sizeof(time_t));
			if(!d) return 0; /* out of memory */
			r->entry.data = d;
			d->ttl = FUNC7(rr, len, 1);
			d->rr_len = (size_t*)((uint8_t*)d +
				sizeof(struct packed_rrset_data));
			d->rr_data = (uint8_t**)&(d->rr_len[1]);
			d->rr_ttl = (time_t*)&(d->rr_data[1]);
		}
		d = (struct packed_rrset_data*)r->entry.data;
		/* add entry to the data */
		if(d->count != 0) {
			size_t* oldlen = d->rr_len;
			uint8_t** olddata = d->rr_data;
			time_t* oldttl = d->rr_ttl;
			/* increase arrays for lookup */
			/* this is of course slow for very many records,
			 * but most redirects are expected with few records */
			d->rr_len = (size_t*)FUNC3(temp,
				(d->count+1)*sizeof(size_t));
			d->rr_data = (uint8_t**)FUNC3(temp,
				(d->count+1)*sizeof(uint8_t*));
			d->rr_ttl = (time_t*)FUNC3(temp,
				(d->count+1)*sizeof(time_t));
			if(!d->rr_len || !d->rr_data || !d->rr_ttl)
				return 0; /* out of memory */
			/* first one was allocated after struct d, but new
			 * ones get their own array increment alloc, so
			 * copy old content */
			FUNC1(d->rr_len, oldlen, d->count*sizeof(size_t));
			FUNC1(d->rr_data, olddata, d->count*sizeof(uint8_t*));
			FUNC1(d->rr_ttl, oldttl, d->count*sizeof(time_t));
		}

		d->rr_len[d->count] = FUNC5(rr, len, 1)+2;
		d->rr_ttl[d->count] = FUNC7(rr, len, 1);
		d->rr_data[d->count] = FUNC2(temp,
			FUNC6(rr, len, 1),
			d->rr_len[d->count]);
		if(!d->rr_data[d->count])
			return 0; /* out of memory */
		d->count++;
	}
	if(r->rk.dname)
		return 1;
	return 0;
}