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
struct ub_packed_rrset_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ub_packed_rrset_key*,size_t) ; 
 int FUNC1 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*,size_t) ; 
 size_t FUNC3 (struct ub_packed_rrset_key*) ; 

int FUNC4(struct ub_packed_rrset_key* ds_rrset)
{
	size_t i, num = FUNC3(ds_rrset);
	int d, digest_algo = 0; /* DS digest algo 0 is not used. */
	/* find favorite algo, for now, highest number supported */
	for(i=0; i<num; i++) {
		if(!FUNC0(ds_rrset, i) ||
			!FUNC2(ds_rrset, i)) {
			continue;
		}
		d = FUNC1(ds_rrset, i);
		if(d > digest_algo)
			digest_algo = d;
	}
	return digest_algo;
}