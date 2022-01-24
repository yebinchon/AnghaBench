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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ time_t ;
struct TYPE_4__ {int dname_len; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; int /*<<< orphan*/ * dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {int* rr_len; size_t count; int /*<<< orphan*/ ** rr_data; scalar_t__* rr_ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct ub_packed_rrset_key* rrset, size_t i,
	time_t now, char* dest, size_t dest_len)
{
	struct packed_rrset_data* d = (struct packed_rrset_data*)rrset->
		entry.data;
	uint8_t rr[65535];
	size_t rlen = rrset->rk.dname_len + 2 + 2 + 4 + d->rr_len[i];
	FUNC0(dest_len > 0 && dest);
	if(rlen > dest_len) {
		dest[0] = 0;
		return 0;
	}
	FUNC2(rr, rrset->rk.dname, rrset->rk.dname_len);
	if(i < d->count)
		FUNC2(rr+rrset->rk.dname_len, &rrset->rk.type, 2);
	else	FUNC4(rr+rrset->rk.dname_len, LDNS_RR_TYPE_RRSIG);
	FUNC2(rr+rrset->rk.dname_len+2, &rrset->rk.rrset_class, 2);
	FUNC5(rr+rrset->rk.dname_len+4,
		(uint32_t)(d->rr_ttl[i]-now));
	FUNC2(rr+rrset->rk.dname_len+8, d->rr_data[i], d->rr_len[i]);
	if(FUNC3(rr, rlen, dest, dest_len) == -1) {
		FUNC1("rrbuf failure %d %s", (int)d->rr_len[i], dest);
		dest[0] = 0;
		return 0;
	} 
	return 1;
}