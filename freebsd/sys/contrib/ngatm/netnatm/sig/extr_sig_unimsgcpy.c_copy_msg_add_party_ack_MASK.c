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
struct uni_add_party_ack {int /*<<< orphan*/  unrec; int /*<<< orphan*/  called_soft; int /*<<< orphan*/ * git; int /*<<< orphan*/  uu; int /*<<< orphan*/  connedsub; int /*<<< orphan*/  conned; int /*<<< orphan*/  eetd; int /*<<< orphan*/  notify; int /*<<< orphan*/  blli; int /*<<< orphan*/  aal; int /*<<< orphan*/  epref; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t UNI_NUM_IE_GIT ; 

void
FUNC1(struct uni_add_party_ack *src, struct uni_add_party_ack *dst)
{
	u_int s, d;

	if(FUNC0(src->epref))
		dst->epref = src->epref;
	if(FUNC0(src->aal))
		dst->aal = src->aal;
	if(FUNC0(src->blli))
		dst->blli = src->blli;
	if(FUNC0(src->notify))
		dst->notify = src->notify;
	if(FUNC0(src->eetd))
		dst->eetd = src->eetd;
	if(FUNC0(src->conned))
		dst->conned = src->conned;
	if(FUNC0(src->connedsub))
		dst->connedsub = src->connedsub;
	if(FUNC0(src->uu))
		dst->uu = src->uu;
	for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
		if(FUNC0(src->git[s]))
			dst->git[d++] = src->git[s];
	if(FUNC0(src->called_soft))
		dst->called_soft = src->called_soft;
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}