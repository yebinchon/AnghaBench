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
struct uni_add_party {int /*<<< orphan*/  unrec; int /*<<< orphan*/ * dtl; int /*<<< orphan*/  dtl_repeat; int /*<<< orphan*/  called_soft; int /*<<< orphan*/  calling_soft; int /*<<< orphan*/  lij_seqno; int /*<<< orphan*/ * git; int /*<<< orphan*/  uu; int /*<<< orphan*/  eetd; int /*<<< orphan*/  notify; int /*<<< orphan*/  epref; int /*<<< orphan*/ * tns; int /*<<< orphan*/  scompl; int /*<<< orphan*/ * callingsub; int /*<<< orphan*/  calling; int /*<<< orphan*/ * calledsub; int /*<<< orphan*/  called; int /*<<< orphan*/  blli; int /*<<< orphan*/  bhli; int /*<<< orphan*/  aal; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t UNI_NUM_IE_CALLEDSUB ; 
 size_t UNI_NUM_IE_CALLINGSUB ; 
 size_t UNI_NUM_IE_DTL ; 
 size_t UNI_NUM_IE_GIT ; 
 size_t UNI_NUM_IE_TNS ; 

void
FUNC1(struct uni_add_party *src, struct uni_add_party *dst)
{
	u_int s, d;

	if(FUNC0(src->aal))
		dst->aal = src->aal;
	if(FUNC0(src->bhli))
		dst->bhli = src->bhli;
	if(FUNC0(src->blli))
		dst->blli = src->blli;
	if(FUNC0(src->called))
		dst->called = src->called;
	for(s = d = 0; s < UNI_NUM_IE_CALLEDSUB; s++)
		if(FUNC0(src->calledsub[s]))
			dst->calledsub[d++] = src->calledsub[s];
	if(FUNC0(src->calling))
		dst->calling = src->calling;
	for(s = d = 0; s < UNI_NUM_IE_CALLINGSUB; s++)
		if(FUNC0(src->callingsub[s]))
			dst->callingsub[d++] = src->callingsub[s];
	if(FUNC0(src->scompl))
		dst->scompl = src->scompl;
	for(s = d = 0; s < UNI_NUM_IE_TNS; s++)
		if(FUNC0(src->tns[s]))
			dst->tns[d++] = src->tns[s];
	if(FUNC0(src->epref))
		dst->epref = src->epref;
	if(FUNC0(src->notify))
		dst->notify = src->notify;
	if(FUNC0(src->eetd))
		dst->eetd = src->eetd;
	if(FUNC0(src->uu))
		dst->uu = src->uu;
	for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
		if(FUNC0(src->git[s]))
			dst->git[d++] = src->git[s];
	if(FUNC0(src->lij_seqno))
		dst->lij_seqno = src->lij_seqno;
	if(FUNC0(src->calling_soft))
		dst->calling_soft = src->calling_soft;
	if(FUNC0(src->called_soft))
		dst->called_soft = src->called_soft;
	if(FUNC0(src->dtl_repeat))
		dst->dtl_repeat = src->dtl_repeat;
	for(s = d = 0; s < UNI_NUM_IE_DTL; s++)
		if(FUNC0(src->dtl[s]))
			dst->dtl[d++] = src->dtl[s];
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}