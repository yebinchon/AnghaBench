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
struct uni_connect {int /*<<< orphan*/  unrec; int /*<<< orphan*/  report; int /*<<< orphan*/  called_soft; int /*<<< orphan*/  abradd; int /*<<< orphan*/  abrsetup; int /*<<< orphan*/  facility; int /*<<< orphan*/  exqos; int /*<<< orphan*/  traffic; int /*<<< orphan*/  uu; int /*<<< orphan*/ * git; int /*<<< orphan*/  eetd; int /*<<< orphan*/  connedsub; int /*<<< orphan*/  conned; int /*<<< orphan*/  notify; int /*<<< orphan*/  epref; int /*<<< orphan*/  connid; int /*<<< orphan*/  blli; int /*<<< orphan*/  aal; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t UNI_NUM_IE_GIT ; 

void
FUNC1(struct uni_connect *src, struct uni_connect *dst)
{
	u_int s, d;

	if(FUNC0(src->aal))
		dst->aal = src->aal;
	if(FUNC0(src->blli))
		dst->blli = src->blli;
	if(FUNC0(src->connid))
		dst->connid = src->connid;
	if(FUNC0(src->epref))
		dst->epref = src->epref;
	if(FUNC0(src->notify))
		dst->notify = src->notify;
	if(FUNC0(src->conned))
		dst->conned = src->conned;
	if(FUNC0(src->connedsub))
		dst->connedsub = src->connedsub;
	if(FUNC0(src->eetd))
		dst->eetd = src->eetd;
	for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
		if(FUNC0(src->git[s]))
			dst->git[d++] = src->git[s];
	if(FUNC0(src->uu))
		dst->uu = src->uu;
	if(FUNC0(src->traffic))
		dst->traffic = src->traffic;
	if(FUNC0(src->exqos))
		dst->exqos = src->exqos;
	if(FUNC0(src->facility))
		dst->facility = src->facility;
	if(FUNC0(src->abrsetup))
		dst->abrsetup = src->abrsetup;
	if(FUNC0(src->abradd))
		dst->abradd = src->abradd;
	if(FUNC0(src->called_soft))
		dst->called_soft = src->called_soft;
	if(FUNC0(src->report))
		dst->report = src->report;
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}