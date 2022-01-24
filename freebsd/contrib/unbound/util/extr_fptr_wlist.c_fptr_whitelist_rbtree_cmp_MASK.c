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

/* Variables and functions */
 int FUNC0 (void const*,void const*) ; 
 int FUNC1 (void const*,void const*) ; 
 int FUNC2 (void const*,void const*) ; 
 int FUNC3 (void const*,void const*) ; 
 int FUNC4 (void const*,void const*) ; 
 int FUNC5 (void const*,void const*) ; 
 int FUNC6 (void const*,void const*) ; 
 int FUNC7 (void const*,void const*) ; 
 int FUNC8 (void const*,void const*) ; 
 int FUNC9 (void const*,void const*) ; 
 int FUNC10 (void const*,void const*) ; 
 int FUNC11 (void const*,void const*) ; 
 int FUNC12 (void const*,void const*) ; 
 int FUNC13 (void const*,void const*) ; 
 int FUNC14 (void const*,void const*) ; 
 int FUNC15 (void const*,void const*) ; 
 int FUNC16 (void const*,void const*) ; 
 int FUNC17 (void const*,void const*) ; 
 int FUNC18 (void const*,void const*) ; 
 int FUNC19 (void const*,void const*) ; 
 int FUNC20 (void const*,void const*) ; 
 int FUNC21 (void const*,void const*) ; 
 int FUNC22 (void const*,void const*) ; 
 int FUNC23 (void const*,void const*) ; 

int 
FUNC24(int (*fptr) (const void *, const void *))
{
	if(fptr == &mesh_state_compare) return 1;
	else if(fptr == &mesh_state_ref_compare) return 1;
	else if(fptr == &addr_tree_compare) return 1;
	else if(fptr == &local_zone_cmp) return 1;
	else if(fptr == &local_data_cmp) return 1;
	else if(fptr == &fwd_cmp) return 1;
	else if(fptr == &pending_cmp) return 1;
	else if(fptr == &serviced_cmp) return 1;
	else if(fptr == &name_tree_compare) return 1;
	else if(fptr == &order_lock_cmp) return 1;
	else if(fptr == &codeline_cmp) return 1;
	else if(fptr == &nsec3_hash_cmp) return 1;
	else if(fptr == &mini_ev_cmp) return 1;
	else if(fptr == &anchor_cmp) return 1;
	else if(fptr == &canonical_tree_compare) return 1;
	else if(fptr == &context_query_cmp) return 1;
	else if(fptr == &val_neg_data_compare) return 1;
	else if(fptr == &val_neg_zone_compare) return 1;
	else if(fptr == &probetree_cmp) return 1;
	else if(fptr == &replay_var_compare) return 1;
	else if(fptr == &view_cmp) return 1;
	else if(fptr == &auth_zone_cmp) return 1;
	else if(fptr == &auth_data_cmp) return 1;
	else if(fptr == &auth_xfer_cmp) return 1;
	return 0;
}