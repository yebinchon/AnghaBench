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
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct ub_packed_rrset_key {int /*<<< orphan*/  id; TYPE_1__ entry; } ;
struct rrset_ref {int /*<<< orphan*/  id; struct ub_packed_rrset_key* key; } ;
struct rrset_parse {int dummy; } ;
struct packed_rrset_data {int dummy; } ;
struct msg_parse {int dummy; } ;
struct module_env {int /*<<< orphan*/  alloc; int /*<<< orphan*/  rrset_cache; int /*<<< orphan*/ * now; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 struct ub_packed_rrset_key* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_rrset_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct msg_parse*,struct rrset_parse*,int /*<<< orphan*/ *,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rrset_ref*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(sldns_buffer* pkt, struct msg_parse* msg, struct module_env* env,
	struct rrset_parse* rrset)
{
	struct ub_packed_rrset_key* k;
	struct packed_rrset_data* d;
	struct rrset_ref ref;
	time_t now = *env->now;

	k = FUNC0(env->alloc);
	if(!k)
		return;
	k->entry.data = NULL;
	if(!FUNC3(pkt, msg, rrset, NULL, k)) {
		FUNC1(env->alloc, k);
		return;
	}
	d = (struct packed_rrset_data*)k->entry.data;
	FUNC2(d, now);
	ref.key = k;
	ref.id = k->id;
	/*ignore ret: it was in the cache, ref updated */
	(void)FUNC4(env->rrset_cache, &ref, env->alloc, now);
}