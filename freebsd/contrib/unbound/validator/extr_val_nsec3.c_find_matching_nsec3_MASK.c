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
struct ub_packed_rrset_key {int dummy; } ;
struct nsec3_filter {int dummy; } ;
struct nsec3_cached_hash {int dummy; } ;
struct module_env {int /*<<< orphan*/  scratch_buffer; int /*<<< orphan*/  scratch; } ;
typedef  int /*<<< orphan*/  rbtree_type ;

/* Variables and functions */
 struct ub_packed_rrset_key* FUNC0 (struct nsec3_filter*,size_t*,int*) ; 
 struct ub_packed_rrset_key* FUNC1 (struct nsec3_filter*,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct nsec3_filter*,struct nsec3_cached_hash*,struct ub_packed_rrset_key*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ub_packed_rrset_key*,int,int /*<<< orphan*/ *,size_t,struct nsec3_cached_hash**) ; 

__attribute__((used)) static int
FUNC5(struct module_env* env, struct nsec3_filter* flt,
	rbtree_type* ct, uint8_t* nm, size_t nmlen, 
	struct ub_packed_rrset_key** rrset, int* rr)
{
	size_t i_rs;
	int i_rr;
	struct ub_packed_rrset_key* s;
	struct nsec3_cached_hash* hash = NULL;
	int r;

	/* this loop skips other-zone and unknown NSEC3s, also non-NSEC3 RRs */
	for(s=FUNC0(flt, &i_rs, &i_rr); s; 
		s=FUNC1(flt, &i_rs, &i_rr)) {
		/* get name hashed for this NSEC3 RR */
		r = FUNC4(ct, env->scratch, env->scratch_buffer,
			s, i_rr, nm, nmlen, &hash);
		if(r == 0) {
			FUNC2("nsec3: malloc failure");
			break; /* alloc failure */
		} else if(r != 1)
			continue; /* malformed NSEC3 */
		else if(FUNC3(flt, hash, s)) {
			*rrset = s; /* rrset with this name */
			*rr = i_rr; /* matches hash with these parameters */
			return 1;
		}
	}
	*rrset = NULL;
	*rr = 0;
	return 0;
}