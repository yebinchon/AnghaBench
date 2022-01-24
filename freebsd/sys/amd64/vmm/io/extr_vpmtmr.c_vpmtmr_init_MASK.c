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
struct vpmtmr {int /*<<< orphan*/  freq_sbt; scalar_t__ baseval; int /*<<< orphan*/  baseuptime; } ;
struct vm {int dummy; } ;
struct bintime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bintime*) ; 
 int /*<<< orphan*/  M_VPMTMR ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PMTMR_FREQ ; 
 int /*<<< orphan*/  FUNC1 (struct bintime) ; 
 struct vpmtmr* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct vpmtmr *
FUNC4(struct vm *vm)
{
	struct vpmtmr *vpmtmr;
	struct bintime bt;

	vpmtmr = FUNC2(sizeof(struct vpmtmr), M_VPMTMR, M_WAITOK | M_ZERO);
	vpmtmr->baseuptime = FUNC3();
	vpmtmr->baseval = 0;

	FUNC0(PMTMR_FREQ, &bt);
	vpmtmr->freq_sbt = FUNC1(bt);

	return (vpmtmr);
}