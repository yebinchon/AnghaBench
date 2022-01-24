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
struct ssi_rate {int /*<<< orphan*/  mfd; int /*<<< orphan*/  mfn; int /*<<< orphan*/  mfi; } ;
struct sc_info {struct ssi_rate* sr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct sc_info *sc)
{
	struct ssi_rate *sr;

	sr = sc->sr;

	FUNC0(sr->mfi, sr->mfn, sr->mfd);

	/* Configure other dividers here, if any */
}