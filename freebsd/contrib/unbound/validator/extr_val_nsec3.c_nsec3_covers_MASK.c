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
struct TYPE_2__ {scalar_t__* dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct nsec3_cached_hash {size_t hash_len; size_t b32_len; int /*<<< orphan*/ * hash; int /*<<< orphan*/  b32; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*,int,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(uint8_t* zone, struct nsec3_cached_hash* hash,
	struct ub_packed_rrset_key* rrset, int rr, sldns_buffer* buf)
{
	uint8_t* next, *owner;
	size_t nextlen;
	int len;
	if(!FUNC2(rrset, rr, &next, &nextlen))
		return 0; /* malformed RR proves nothing */

	/* check the owner name is a hashed value . apex
	 * base32 encoded values must have equal length. 
	 * hash_value and next hash value must have equal length. */
	if(nextlen != hash->hash_len || hash->hash_len==0||hash->b32_len==0|| 
		(size_t)*rrset->rk.dname != hash->b32_len ||
		FUNC3(rrset->rk.dname+1+
			(size_t)*rrset->rk.dname, zone) != 0)
		return 0; /* bad lengths or owner name */

	/* This is the "normal case: owner < next and owner < hash < next */
	if(FUNC0(rrset->rk.dname+1, hash->b32, 
		hash->b32_len) < 0 && 
		FUNC1(hash->hash, next, nextlen) < 0)
		return 1;

	/* convert owner name from text to binary */
	FUNC6(buf);
	owner = FUNC5(buf);
	len = FUNC4((char*)rrset->rk.dname+1, 
		hash->b32_len, owner, FUNC7(buf));
	if(len<1)
		return 0; /* bad owner name in some way */
	if((size_t)len != hash->hash_len || (size_t)len != nextlen)
		return 0; /* wrong length */

	/* this is the end of zone case: next <= owner && 
	 * 	(hash > owner || hash < next) 
	 * this also covers the only-apex case of next==owner.
	 */
	if(FUNC1(next, owner, nextlen) <= 0 &&
		( FUNC1(hash->hash, owner, nextlen) > 0 ||
		  FUNC1(hash->hash, next, nextlen) < 0)) {
		return 1;
	}
	return 0;
}