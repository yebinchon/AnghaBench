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
typedef  union uni_ieall {int dummy; } uni_ieall ;
typedef  size_t u_int ;
struct unicx {int /*<<< orphan*/  pnni; } ;
struct uni_add_party {int /*<<< orphan*/  unrec; int /*<<< orphan*/ * dtl; int /*<<< orphan*/  dtl_repeat; int /*<<< orphan*/  called_soft; int /*<<< orphan*/  calling_soft; int /*<<< orphan*/  lij_seqno; int /*<<< orphan*/ * git; int /*<<< orphan*/  uu; int /*<<< orphan*/  eetd; int /*<<< orphan*/  notify; int /*<<< orphan*/  epref; int /*<<< orphan*/ * tns; int /*<<< orphan*/  scompl; int /*<<< orphan*/ * callingsub; int /*<<< orphan*/  calling; int /*<<< orphan*/ * calledsub; int /*<<< orphan*/  called; int /*<<< orphan*/  blli; int /*<<< orphan*/  bhli; int /*<<< orphan*/  aal; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNI_IE_AAL ; 
 int /*<<< orphan*/  UNI_IE_BHLI ; 
 int /*<<< orphan*/  UNI_IE_BLLI ; 
 int /*<<< orphan*/  UNI_IE_CALLED ; 
 int /*<<< orphan*/  UNI_IE_CALLEDSUB ; 
 int /*<<< orphan*/  UNI_IE_CALLED_SOFT ; 
 int /*<<< orphan*/  UNI_IE_CALLING ; 
 int /*<<< orphan*/  UNI_IE_CALLINGSUB ; 
 int /*<<< orphan*/  UNI_IE_CALLING_SOFT ; 
 int /*<<< orphan*/  UNI_IE_DTL ; 
 int /*<<< orphan*/  UNI_IE_EETD ; 
 int /*<<< orphan*/  UNI_IE_EPREF ; 
 int /*<<< orphan*/  UNI_IE_GIT ; 
 int /*<<< orphan*/  UNI_IE_LIJ_SEQNO ; 
 int /*<<< orphan*/  UNI_IE_NOTIFY ; 
 int /*<<< orphan*/  UNI_IE_REPEAT ; 
 int /*<<< orphan*/  UNI_IE_SCOMPL ; 
 int /*<<< orphan*/  UNI_IE_TNS ; 
 int /*<<< orphan*/  UNI_IE_UNREC ; 
 int /*<<< orphan*/  UNI_IE_UU ; 
 size_t UNI_NUM_IE_CALLEDSUB ; 
 size_t UNI_NUM_IE_CALLINGSUB ; 
 size_t UNI_NUM_IE_DTL ; 
 size_t UNI_NUM_IE_GIT ; 
 size_t UNI_NUM_IE_TNS ; 
 int FUNC1 (int /*<<< orphan*/ ,union uni_ieall*,struct unicx*) ; 

__attribute__((used)) static int
FUNC2(struct uni_add_party *m, struct unicx *cx)
{
	int ret = 0;
	u_int i;

	ret |= FUNC1(UNI_IE_AAL, (union uni_ieall *)&m->aal, cx);
	ret |= FUNC1(UNI_IE_BHLI, (union uni_ieall *)&m->bhli, cx);
	ret |= FUNC1(UNI_IE_BLLI, (union uni_ieall *)&m->blli, cx);
	ret |= FUNC1(UNI_IE_CALLED, (union uni_ieall *)&m->called, cx);
	for(i = 0; i < UNI_NUM_IE_CALLEDSUB ; i++) {
		ret |= FUNC1(UNI_IE_CALLEDSUB, (union uni_ieall *)&m->calledsub[i], cx);
	}
	ret |= FUNC1(UNI_IE_CALLING, (union uni_ieall *)&m->calling, cx);
	for(i = 0; i < UNI_NUM_IE_CALLINGSUB ; i++) {
		ret |= FUNC1(UNI_IE_CALLINGSUB, (union uni_ieall *)&m->callingsub[i], cx);
	}
	if(!(!cx->pnni))
		ret |= FUNC0(m->scompl);
	else
		ret |= FUNC1(UNI_IE_SCOMPL, (union uni_ieall *)&m->scompl, cx);
	for(i = 0; i < UNI_NUM_IE_TNS ; i++) {
		ret |= FUNC1(UNI_IE_TNS, (union uni_ieall *)&m->tns[i], cx);
	}
	ret |= FUNC1(UNI_IE_EPREF, (union uni_ieall *)&m->epref, cx);
	ret |= FUNC1(UNI_IE_NOTIFY, (union uni_ieall *)&m->notify, cx);
	ret |= FUNC1(UNI_IE_EETD, (union uni_ieall *)&m->eetd, cx);
	if(!(!cx->pnni))
		ret |= FUNC0(m->uu);
	else
		ret |= FUNC1(UNI_IE_UU, (union uni_ieall *)&m->uu, cx);
	for(i = 0; i < UNI_NUM_IE_GIT ; i++) {
		ret |= FUNC1(UNI_IE_GIT, (union uni_ieall *)&m->git[i], cx);
	}
	if(!(!cx->pnni))
		ret |= FUNC0(m->lij_seqno);
	else
		ret |= FUNC1(UNI_IE_LIJ_SEQNO, (union uni_ieall *)&m->lij_seqno, cx);
	if(!(cx->pnni))
		ret |= FUNC0(m->calling_soft);
	else
		ret |= FUNC1(UNI_IE_CALLING_SOFT, (union uni_ieall *)&m->calling_soft, cx);
	if(!(cx->pnni))
		ret |= FUNC0(m->called_soft);
	else
		ret |= FUNC1(UNI_IE_CALLED_SOFT, (union uni_ieall *)&m->called_soft, cx);
	if(!(cx->pnni))
		ret |= FUNC0(m->dtl_repeat);
	else
		ret |= FUNC1(UNI_IE_REPEAT, (union uni_ieall *)&m->dtl_repeat, cx);
	for(i = 0; i < UNI_NUM_IE_DTL ; i++) {
		if(!(cx->pnni))
			ret |= FUNC0(m->dtl[i]);
		else
			ret |= FUNC1(UNI_IE_DTL, (union uni_ieall *)&m->dtl[i], cx);
	}
	ret |= FUNC1(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

	return ret;
}