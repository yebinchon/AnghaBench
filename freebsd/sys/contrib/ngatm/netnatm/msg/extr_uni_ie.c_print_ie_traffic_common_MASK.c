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
struct unicx {int dummy; } ;
struct uni_xtraffic {scalar_t__ bdisc; scalar_t__ fdisc; scalar_t__ btag; scalar_t__ ftag; int /*<<< orphan*/  babr1; int /*<<< orphan*/  bmbs1; int /*<<< orphan*/  bmbs0; int /*<<< orphan*/  bscr1; int /*<<< orphan*/  bscr0; int /*<<< orphan*/  bpcr1; int /*<<< orphan*/  bpcr0; int /*<<< orphan*/  fabr1; int /*<<< orphan*/  fmbs1; int /*<<< orphan*/  fmbs0; int /*<<< orphan*/  fscr1; int /*<<< orphan*/  fscr0; int /*<<< orphan*/  fpcr1; int /*<<< orphan*/  fpcr0; } ;

/* Variables and functions */
 int UNI_TRAFFIC_BABR1_P ; 
 int UNI_TRAFFIC_BEST_P ; 
 int UNI_TRAFFIC_BMBS0_P ; 
 int UNI_TRAFFIC_BMBS1_P ; 
 int UNI_TRAFFIC_BPCR0_P ; 
 int UNI_TRAFFIC_BPCR1_P ; 
 int UNI_TRAFFIC_BSCR0_P ; 
 int UNI_TRAFFIC_BSCR1_P ; 
 int UNI_TRAFFIC_FABR1_P ; 
 int UNI_TRAFFIC_FMBS0_P ; 
 int UNI_TRAFFIC_FMBS1_P ; 
 int UNI_TRAFFIC_FPCR0_P ; 
 int UNI_TRAFFIC_FPCR1_P ; 
 int UNI_TRAFFIC_FSCR0_P ; 
 int UNI_TRAFFIC_FSCR1_P ; 
 int UNI_TRAFFIC_MOPT_P ; 
 int /*<<< orphan*/  FUNC0 (struct unicx*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct unicx*) ; 
 int /*<<< orphan*/  FUNC2 (struct unicx*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char,struct unicx*) ; 

__attribute__((used)) static void
FUNC4(struct unicx *cx, u_int present, struct uni_xtraffic *ie)
{
	FUNC0(cx, "fwd", "(");
	if(present & UNI_TRAFFIC_FPCR0_P)
		FUNC2(cx, "%u", ie->fpcr0);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_FPCR1_P)
		FUNC2(cx, "%u", ie->fpcr1);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_FSCR0_P)
		FUNC2(cx, "%u", ie->fscr0);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_FSCR1_P)
		FUNC2(cx, "%u", ie->fscr1);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_FMBS0_P)
		FUNC2(cx, "%u", ie->fmbs0);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_FMBS1_P)
		FUNC2(cx, "%u", ie->fmbs1);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_FABR1_P)
		FUNC2(cx, "%u", ie->fabr1);
	FUNC2(cx, ")");

	FUNC0(cx, "bwd", "(");
	if(present & UNI_TRAFFIC_BPCR0_P)
		FUNC2(cx, "%u", ie->bpcr0);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_BPCR1_P)
		FUNC2(cx, "%u", ie->bpcr1);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_BSCR0_P)
		FUNC2(cx, "%u", ie->bscr0);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_BSCR1_P)
		FUNC2(cx, "%u", ie->bscr1);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_BMBS0_P)
		FUNC2(cx, "%u", ie->bmbs0);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_BMBS1_P)
		FUNC2(cx, "%u", ie->bmbs1);
	FUNC3(',', cx);
	if(present & UNI_TRAFFIC_BABR1_P)
		FUNC2(cx, "%u", ie->babr1);
	FUNC2(cx, ")");

	if(present & UNI_TRAFFIC_BEST_P)
		FUNC1("best_effort", cx);
	if(present & UNI_TRAFFIC_MOPT_P) {
		FUNC0(cx, "tag", "(");
		if(ie->ftag)
			FUNC2(cx, "fwd");
		FUNC3(',', cx);
		if(ie->btag)
			FUNC2(cx, "bwd");
		FUNC3(')', cx);

		FUNC0(cx, "disc", "(");
		if(ie->fdisc)
			FUNC2(cx, "fwd");
		FUNC3(',', cx);
		if(ie->bdisc)
			FUNC2(cx, "bwd");
		FUNC3(')', cx);
	}
}