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
struct uni_setup {int /*<<< orphan*/  unrec; int /*<<< orphan*/  mdcr; int /*<<< orphan*/  report; int /*<<< orphan*/ * dtl; int /*<<< orphan*/  dtl_repeat; int /*<<< orphan*/  called_soft; int /*<<< orphan*/  calling_soft; int /*<<< orphan*/  cscope; int /*<<< orphan*/  abradd; int /*<<< orphan*/  abrsetup; int /*<<< orphan*/  exqos; int /*<<< orphan*/  lij_seqno; int /*<<< orphan*/  lij_param; int /*<<< orphan*/  lij_callid; int /*<<< orphan*/ * git; int /*<<< orphan*/  uu; int /*<<< orphan*/  mintraffic; int /*<<< orphan*/  atraffic; int /*<<< orphan*/  epref; int /*<<< orphan*/ * tns; int /*<<< orphan*/  scompl; int /*<<< orphan*/  notify; int /*<<< orphan*/  eetd; int /*<<< orphan*/  qos; int /*<<< orphan*/  connid; int /*<<< orphan*/ * callingsub; int /*<<< orphan*/  calling; int /*<<< orphan*/ * calledsub; int /*<<< orphan*/  called; int /*<<< orphan*/ * blli; int /*<<< orphan*/  blli_repeat; int /*<<< orphan*/  bhli; int /*<<< orphan*/  bearer; int /*<<< orphan*/  traffic; int /*<<< orphan*/  aal; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t UNI_NUM_IE_BLLI ; 
 size_t UNI_NUM_IE_CALLEDSUB ; 
 size_t UNI_NUM_IE_CALLINGSUB ; 
 size_t UNI_NUM_IE_DTL ; 
 size_t UNI_NUM_IE_GIT ; 
 size_t UNI_NUM_IE_TNS ; 

void
FUNC1(struct uni_setup *src, struct uni_setup *dst)
{
	u_int s, d;

	if(FUNC0(src->aal))
		dst->aal = src->aal;
	if(FUNC0(src->traffic))
		dst->traffic = src->traffic;
	if(FUNC0(src->bearer))
		dst->bearer = src->bearer;
	if(FUNC0(src->bhli))
		dst->bhli = src->bhli;
	if(FUNC0(src->blli_repeat))
		dst->blli_repeat = src->blli_repeat;
	for(s = d = 0; s < UNI_NUM_IE_BLLI; s++)
		if(FUNC0(src->blli[s]))
			dst->blli[d++] = src->blli[s];
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
	if(FUNC0(src->connid))
		dst->connid = src->connid;
	if(FUNC0(src->qos))
		dst->qos = src->qos;
	if(FUNC0(src->eetd))
		dst->eetd = src->eetd;
	if(FUNC0(src->notify))
		dst->notify = src->notify;
	if(FUNC0(src->scompl))
		dst->scompl = src->scompl;
	for(s = d = 0; s < UNI_NUM_IE_TNS; s++)
		if(FUNC0(src->tns[s]))
			dst->tns[d++] = src->tns[s];
	if(FUNC0(src->epref))
		dst->epref = src->epref;
	if(FUNC0(src->atraffic))
		dst->atraffic = src->atraffic;
	if(FUNC0(src->mintraffic))
		dst->mintraffic = src->mintraffic;
	if(FUNC0(src->uu))
		dst->uu = src->uu;
	for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
		if(FUNC0(src->git[s]))
			dst->git[d++] = src->git[s];
	if(FUNC0(src->lij_callid))
		dst->lij_callid = src->lij_callid;
	if(FUNC0(src->lij_param))
		dst->lij_param = src->lij_param;
	if(FUNC0(src->lij_seqno))
		dst->lij_seqno = src->lij_seqno;
	if(FUNC0(src->exqos))
		dst->exqos = src->exqos;
	if(FUNC0(src->abrsetup))
		dst->abrsetup = src->abrsetup;
	if(FUNC0(src->abradd))
		dst->abradd = src->abradd;
	if(FUNC0(src->cscope))
		dst->cscope = src->cscope;
	if(FUNC0(src->calling_soft))
		dst->calling_soft = src->calling_soft;
	if(FUNC0(src->called_soft))
		dst->called_soft = src->called_soft;
	if(FUNC0(src->dtl_repeat))
		dst->dtl_repeat = src->dtl_repeat;
	for(s = d = 0; s < UNI_NUM_IE_DTL; s++)
		if(FUNC0(src->dtl[s]))
			dst->dtl[d++] = src->dtl[s];
	if(FUNC0(src->report))
		dst->report = src->report;
	if(FUNC0(src->mdcr))
		dst->mdcr = src->mdcr;
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}