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
struct val_env {int dummy; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct nsec3_filter {int dummy; } ;
struct key_entry_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 struct ub_packed_rrset_key* FUNC0 (struct nsec3_filter*,size_t*,int*) ; 
 struct ub_packed_rrset_key* FUNC1 (struct nsec3_filter*,size_t*,int*) ; 
 size_t FUNC2 (struct val_env*,size_t) ; 
 size_t FUNC3 (struct key_entry_key*) ; 
 size_t FUNC4 (struct ub_packed_rrset_key*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct val_env* ve, struct nsec3_filter* filter, 
	struct key_entry_key* kkey)
{
	size_t rrsetnum;
	int rrnum;
	struct ub_packed_rrset_key* rrset;
	/* first determine the max number of iterations */
	size_t bits = FUNC3(kkey);
	size_t max_iter = FUNC2(ve, bits);
	FUNC5(VERB_ALGO, "nsec3: keysize %d bits, max iterations %d",
		(int)bits, (int)max_iter);

	for(rrset=FUNC0(filter, &rrsetnum, &rrnum); rrset; 
		rrset=FUNC1(filter, &rrsetnum, &rrnum)) {
		if(FUNC4(rrset, rrnum) > max_iter)
			return 1;
	}
	return 0;
}