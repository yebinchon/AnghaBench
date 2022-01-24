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
struct uni_party_alerting {int /*<<< orphan*/  unrec; int /*<<< orphan*/ * git; int /*<<< orphan*/  uu; int /*<<< orphan*/  notify; int /*<<< orphan*/  epref; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t UNI_NUM_IE_GIT ; 

void
FUNC1(struct uni_party_alerting *src, struct uni_party_alerting *dst)
{
	u_int s, d;

	if(FUNC0(src->epref))
		dst->epref = src->epref;
	if(FUNC0(src->notify))
		dst->notify = src->notify;
	if(FUNC0(src->uu))
		dst->uu = src->uu;
	for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
		if(FUNC0(src->git[s]))
			dst->git[d++] = src->git[s];
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}