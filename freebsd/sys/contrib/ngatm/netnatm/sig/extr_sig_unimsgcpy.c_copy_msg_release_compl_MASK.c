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
typedef  int u_int ;
struct uni_release_compl {int /*<<< orphan*/  unrec; int /*<<< orphan*/  crankback; int /*<<< orphan*/  uu; int /*<<< orphan*/ * git; int /*<<< orphan*/ * cause; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int UNI_NUM_IE_GIT ; 

void
FUNC1(struct uni_release_compl *src, struct uni_release_compl *dst)
{
	u_int s, d;

	for(s = d = 0; s < 2; s++)
		if(FUNC0(src->cause[s]))
			dst->cause[d++] = src->cause[s];
	for(s = d = 0; s < UNI_NUM_IE_GIT; s++)
		if(FUNC0(src->git[s]))
			dst->git[d++] = src->git[s];
	if(FUNC0(src->uu))
		dst->uu = src->uu;
	if(FUNC0(src->crankback))
		dst->crankback = src->crankback;
	if(FUNC0(src->unrec))
		dst->unrec = src->unrec;
}