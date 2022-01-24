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
struct query_info {int dummy; } ;
struct nsec3_filter {int /*<<< orphan*/  zone; } ;
struct module_env {int dummy; } ;
struct key_entry_key {int dummy; } ;
typedef  int /*<<< orphan*/  rbtree_type ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct nsec3_filter*,struct ub_packed_rrset_key**,size_t,struct query_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct module_env*,struct nsec3_filter*,int /*<<< orphan*/ *,struct query_info*) ; 
 int /*<<< orphan*/  nsec3_hash_cmp ; 
 scalar_t__ FUNC4 (struct val_env*,struct nsec3_filter*,struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int sec_status_bogus ; 
 int sec_status_insecure ; 

enum sec_status
FUNC6(struct module_env* env, struct val_env* ve,
	struct ub_packed_rrset_key** list, size_t num,
	struct query_info* qinfo, struct key_entry_key* kkey)
{
	rbtree_type ct;
	struct nsec3_filter flt;

	if(!list || num == 0 || !kkey || !FUNC1(kkey))
		return sec_status_bogus; /* no valid NSEC3s, bogus */
	FUNC5(&ct, &nsec3_hash_cmp); /* init names-to-hash cache */
	FUNC0(&flt, list, num, qinfo); /* init RR iterator */
	if(!flt.zone)
		return sec_status_bogus; /* no RRs */
	if(FUNC4(ve, &flt, kkey))
		return sec_status_insecure; /* iteration count too high */
	FUNC2(VERB_ALGO, "start nsec3 nameerror proof, zone", 
		flt.zone, 0, 0);
	return FUNC3(env, &flt, &ct, qinfo);
}