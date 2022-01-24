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
struct TYPE_3__ {void* data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct trust_anchor {TYPE_2__* autr; void* numDNSKEY; void* numDS; struct ub_packed_rrset_key* dnskey_rrset; struct ub_packed_rrset_key* ds_rrset; } ;
struct TYPE_4__ {int /*<<< orphan*/  keys; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  assemble_iterate_dnskey ; 
 int /*<<< orphan*/  assemble_iterate_ds ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ub_packed_rrset_key* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC5(struct trust_anchor* tp)
{
	struct ub_packed_rrset_key* ubds=NULL, *ubdnskey=NULL;

	/* make packed rrset keys - malloced with no ID number, they
	 * are not in the cache */
	/* make packed rrset data (if there is a key) */
	if(FUNC1(assemble_iterate_ds, tp->autr->keys)) {
		ubds = FUNC4(
			assemble_iterate_ds, tp->autr->keys);
		if(!ubds)
			goto error_cleanup;
		ubds->entry.data = FUNC3(
			assemble_iterate_ds, tp->autr->keys);
		if(!ubds->entry.data)
			goto error_cleanup;
	}

	/* make packed DNSKEY data */
	if(FUNC1(assemble_iterate_dnskey, tp->autr->keys)) {
		ubdnskey = FUNC4(
			assemble_iterate_dnskey, tp->autr->keys);
		if(!ubdnskey)
			goto error_cleanup;
		ubdnskey->entry.data = FUNC3(
			assemble_iterate_dnskey, tp->autr->keys);
		if(!ubdnskey->entry.data) {
		error_cleanup:
			FUNC2(ubds);
			FUNC2(ubdnskey);
			return 0;
		}
	}

	/* we have prepared the new keys so nothing can go wrong any more.
	 * And we are sure we cannot be left without trustanchor after
	 * any errors. Put in the new keys and remove old ones. */

	/* free the old data */
	FUNC2(tp->ds_rrset);
	FUNC2(tp->dnskey_rrset);

	/* assign the data to replace the old */
	tp->ds_rrset = ubds;
	tp->dnskey_rrset = ubdnskey;
	tp->numDS = FUNC0(assemble_iterate_ds,
		tp->autr->keys);
	tp->numDNSKEY = FUNC0(assemble_iterate_dnskey,
		tp->autr->keys);
	return 1;
}