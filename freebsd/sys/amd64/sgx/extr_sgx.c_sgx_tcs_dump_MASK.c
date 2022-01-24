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
struct tcs {int /*<<< orphan*/  gslimit; int /*<<< orphan*/  fslimit; int /*<<< orphan*/  ogsbasgx; int /*<<< orphan*/  ofsbasgx; int /*<<< orphan*/  oentry; int /*<<< orphan*/  nssa; int /*<<< orphan*/  cssa; int /*<<< orphan*/  ossa; int /*<<< orphan*/  flags; } ;
struct sgx_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct sgx_softc *sc, struct tcs *t)
{

	FUNC0("t->flags %lx\n", t->flags);
	FUNC0("t->ossa %lx\n", t->ossa);
	FUNC0("t->cssa %x\n", t->cssa);
	FUNC0("t->nssa %x\n", t->nssa);
	FUNC0("t->oentry %lx\n", t->oentry);
	FUNC0("t->ofsbasgx %lx\n", t->ofsbasgx);
	FUNC0("t->ogsbasgx %lx\n", t->ogsbasgx);
	FUNC0("t->fslimit %x\n", t->fslimit);
	FUNC0("t->gslimit %x\n", t->gslimit);
}