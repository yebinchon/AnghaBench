#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  region; TYPE_3__* env; int /*<<< orphan*/ * ext_state; int /*<<< orphan*/ ** minfo; } ;
struct mesh_state {TYPE_4__ s; struct mesh_cb* cb_list; struct mesh_reply* reply_list; int /*<<< orphan*/  replies_sent; } ;
struct mesh_reply {int /*<<< orphan*/  query_reply; struct mesh_reply* next; } ;
struct mesh_cb {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;struct mesh_cb* next; } ;
struct TYPE_7__ {int num; TYPE_1__** mod; } ;
struct mesh_area {TYPE_2__ mods; int /*<<< orphan*/  num_reply_addrs; } ;
struct TYPE_8__ {int /*<<< orphan*/  alloc; struct mesh_area* mesh; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* clear ) (TYPE_4__*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (TYPE_4__*,int)) ; 
 int /*<<< orphan*/  module_finished ; 
 int /*<<< orphan*/  sec_status_unchecked ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 

void 
FUNC7(struct mesh_state* mstate)
{
	struct mesh_area* mesh;
	int i;
	if(!mstate)
		return;
	mesh = mstate->s.env->mesh;
	/* drop unsent replies */
	if(!mstate->replies_sent) {
		struct mesh_reply* rep = mstate->reply_list;
		struct mesh_cb* cb;
		/* in tcp_req_info, the mstates linked are removed, but
		 * the reply_list is now NULL, so the remove-from-empty-list
		 * takes no time and also it does not do the mesh accounting */
		mstate->reply_list = NULL;
		for(; rep; rep=rep->next) {
			FUNC1(&rep->query_reply);
			mesh->num_reply_addrs--;
		}
		while((cb = mstate->cb_list)!=NULL) {
			mstate->cb_list = cb->next;
			FUNC2(FUNC3(cb->cb));
			(*cb->cb)(cb->cb_arg, LDNS_RCODE_SERVFAIL, NULL,
				sec_status_unchecked, NULL, 0);
			mesh->num_reply_addrs--;
		}
	}

	/* de-init modules */
	for(i=0; i<mesh->mods.num; i++) {
		FUNC2(FUNC4(mesh->mods.mod[i]->clear));
		(*mesh->mods.mod[i]->clear)(&mstate->s, i);
		mstate->s.minfo[i] = NULL;
		mstate->s.ext_state[i] = module_finished;
	}
	FUNC0(mstate->s.env->alloc, mstate->s.region);
}