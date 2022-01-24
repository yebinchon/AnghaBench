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
struct ctl_softc {int /*<<< orphan*/  tpc_timeout; int /*<<< orphan*/  ctl_lock; int /*<<< orphan*/  tpc_tokens; int /*<<< orphan*/  tpc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ctl_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpc_timeout ; 

void
FUNC4(struct ctl_softc *softc)
{

	FUNC3(&softc->tpc_lock, "CTL TPC mutex", NULL, MTX_DEF);
	FUNC0(&softc->tpc_tokens);
	FUNC1(&softc->tpc_timeout, &softc->ctl_lock, 0);
	FUNC2(&softc->tpc_timeout, hz, tpc_timeout, softc);
}