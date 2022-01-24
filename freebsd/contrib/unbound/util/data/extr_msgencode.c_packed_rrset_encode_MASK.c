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
typedef  size_t uint16_t ;
typedef  scalar_t__ time_t ;
struct TYPE_4__ {size_t type; int flags; size_t rrset_class; int /*<<< orphan*/  dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {size_t count; scalar_t__* rr_ttl; size_t** rr_data; int* rr_len; size_t rrsig_count; } ;
struct compress_tree_node {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_rr_descriptor ;
typedef  int /*<<< orphan*/  sldns_pkt_section ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_RRSIG ; 
 int PACKED_RRSET_FIXEDTTL ; 
 int RETVAL_OK ; 
 int RETVAL_TRUNC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct regional*,struct compress_tree_node**) ; 
 int FUNC1 (struct ub_packed_rrset_key*,int /*<<< orphan*/ *,struct regional*,struct compress_tree_node**,size_t,size_t*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t*,int,struct regional*,struct compress_tree_node**,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (struct ub_packed_rrset_key*) ; 

__attribute__((used)) static int
FUNC12(struct ub_packed_rrset_key* key, sldns_buffer* pkt, 
	uint16_t* num_rrs, time_t timenow, struct regional* region,
	int do_data, int do_sig, struct compress_tree_node** tree,
	sldns_pkt_section s, uint16_t qtype, int dnssec, size_t rr_offset)
{
	size_t i, j, owner_pos;
	int r, owner_labs;
	uint16_t owner_ptr = 0;
	struct packed_rrset_data* data = (struct packed_rrset_data*)
		key->entry.data;
	
	/* does this RR type belong in the answer? */
	if(!FUNC5(s, FUNC4(key->rk.type), qtype, dnssec))
		return RETVAL_OK;

	owner_labs = FUNC3(key->rk.dname);
	owner_pos = FUNC6(pkt);

	/* For an rrset with a fixed TTL, use the rrset's TTL as given */
	if((key->rk.flags & PACKED_RRSET_FIXEDTTL) != 0)
		timenow = 0;

	if(do_data) {
		const sldns_rr_descriptor* c = FUNC11(key);
		for(i=0; i<data->count; i++) {
			/* rrset roundrobin */
			j = (i + rr_offset) % data->count;
			if((r=FUNC1(key, pkt, region, tree, 
				owner_pos, &owner_ptr, owner_labs))
				!= RETVAL_OK)
				return r;
			FUNC8(pkt, &key->rk.type, 2);
			FUNC8(pkt, &key->rk.rrset_class, 2);
			if(data->rr_ttl[j] < timenow)
				FUNC10(pkt, 0);
			else 	FUNC10(pkt, 
					data->rr_ttl[j]-timenow);
			if(c) {
				if((r=FUNC2(pkt, data->rr_data[j],
					data->rr_len[j], region, tree, c))
					!= RETVAL_OK)
					return r;
			} else {
				if(FUNC7(pkt) < data->rr_len[j])
					return RETVAL_TRUNC;
				FUNC8(pkt, data->rr_data[j],
					data->rr_len[j]);
			}
		}
	}
	/* insert rrsigs */
	if(do_sig && dnssec) {
		size_t total = data->count+data->rrsig_count;
		for(i=data->count; i<total; i++) {
			if(owner_ptr && owner_labs != 1) {
				if(FUNC7(pkt) <
					2+4+4+data->rr_len[i]) 
					return RETVAL_TRUNC;
				FUNC8(pkt, &owner_ptr, 2);
			} else {
				if((r=FUNC0(key->rk.dname, 
					pkt, owner_labs, region, tree))
					!= RETVAL_OK)
					return r;
				if(FUNC7(pkt) < 
					4+4+data->rr_len[i])
					return RETVAL_TRUNC;
			}
			FUNC9(pkt, LDNS_RR_TYPE_RRSIG);
			FUNC8(pkt, &key->rk.rrset_class, 2);
			if(data->rr_ttl[i] < timenow)
				FUNC10(pkt, 0);
			else 	FUNC10(pkt, 
					data->rr_ttl[i]-timenow);
			/* rrsig rdata cannot be compressed, perform 100+ byte
			 * memcopy. */
			FUNC8(pkt, data->rr_data[i],
				data->rr_len[i]);
		}
	}
	/* change rrnum only after we are sure it fits */
	if(do_data)
		*num_rrs += data->count;
	if(do_sig && dnssec)
		*num_rrs += data->rrsig_count;

	return RETVAL_OK;
}