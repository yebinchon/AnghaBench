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
typedef  size_t u_int ;
struct uni_leaf_setup_req {int /*<<< orphan*/  unrec; int /*<<< orphan*/  lij_seqno; int /*<<< orphan*/  lij_callid; int /*<<< orphan*/ * calledsub; int /*<<< orphan*/  called; int /*<<< orphan*/ * callingsub; int /*<<< orphan*/  calling; int /*<<< orphan*/ * tns; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t UNI_NUM_IE_CALLEDSUB ; 
 size_t UNI_NUM_IE_CALLINGSUB ; 
 size_t UNI_NUM_IE_TNS ; 

void
FUNC1(struct uni_leaf_setup_req *src, struct uni_leaf_setup_req *dst)
{
	u_int s, d;

	for(s = d = 0; s < UNI_NUM_IE_TNS; s++)
		if(FUNC0(src->tns[s]))
			dst->tns[d++] = src->tns[s];
	if(FUNC0(src->calling))
		dst->calling = src->calling;
	for(s = d = 0; s < UNI_NUM_IE_CALLINGSUB; s++)
		if(FUNC0(src->callingsub[s]))
			dst->callingsub[d++] = src->callingsub[s];
	if(FUNC0(src->called))
		dst->called = src->called;
	for(s = d = 0; s < UNI_NUM_IE_CALLEDSUB; s++)
		if(FUNC0(src->calledsub[s]))
			dst->calledsub[d++] = src->calledsub[s];
	if(FUNC0(src->lij_callid))
		dst->lij_callid = src->lij_callid;
	if(FUNC0(src->lij_seqno))
		dst->lij_seqno = src->lij_seqno;
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}