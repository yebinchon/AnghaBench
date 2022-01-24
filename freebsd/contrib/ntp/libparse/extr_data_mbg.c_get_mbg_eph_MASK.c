#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  L2flag; int /*<<< orphan*/  L2code; int /*<<< orphan*/  URA; int /*<<< orphan*/  tgd; int /*<<< orphan*/  af2; int /*<<< orphan*/  af1; int /*<<< orphan*/  af0; int /*<<< orphan*/  cis; int /*<<< orphan*/  cic; int /*<<< orphan*/  cus; int /*<<< orphan*/  cuc; int /*<<< orphan*/  crs; int /*<<< orphan*/  crc; int /*<<< orphan*/  idot; int /*<<< orphan*/  i0; int /*<<< orphan*/  deltan; int /*<<< orphan*/  OMEGADOT; int /*<<< orphan*/  OMEGA0; int /*<<< orphan*/  omega; int /*<<< orphan*/  M0; int /*<<< orphan*/  e; int /*<<< orphan*/  sqrt_A; int /*<<< orphan*/  t0e; int /*<<< orphan*/  t0c; int /*<<< orphan*/  tt; void* IODE3; void* IODE2; void* IODC; scalar_t__ health; int /*<<< orphan*/  valid; scalar_t__ csum; } ;
typedef  void* IOD ;
typedef  scalar_t__ HEALTH ;
typedef  TYPE_1__ EPH ;
typedef  scalar_t__ CSUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**) ; 
 scalar_t__ FUNC2 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,int /*<<< orphan*/ *) ; 

void
FUNC5(
	unsigned char ** buffpp,
	EPH *ephp
	)
{
  ephp->csum   = (CSUM) FUNC2(buffpp);
  ephp->valid  = FUNC1(buffpp);

  ephp->health = (HEALTH) FUNC2(buffpp);
  ephp->IODC   = (IOD) FUNC2(buffpp);
  ephp->IODE2  = (IOD) FUNC2(buffpp);
  ephp->IODE3  = (IOD) FUNC2(buffpp);

  FUNC4(buffpp, &ephp->tt);
  FUNC4(buffpp, &ephp->t0c);
  FUNC4(buffpp, &ephp->t0e);

  FUNC0(buffpp, &ephp->sqrt_A);
  FUNC0(buffpp, &ephp->e);
  FUNC0(buffpp, &ephp->M0);
  FUNC0(buffpp, &ephp->omega);
  FUNC0(buffpp, &ephp->OMEGA0);
  FUNC0(buffpp, &ephp->OMEGADOT);
  FUNC0(buffpp, &ephp->deltan);
  FUNC0(buffpp, &ephp->i0);
  FUNC0(buffpp, &ephp->idot);
  FUNC0(buffpp, &ephp->crc);
  FUNC0(buffpp, &ephp->crs);
  FUNC0(buffpp, &ephp->cuc);
  FUNC0(buffpp, &ephp->cus);
  FUNC0(buffpp, &ephp->cic);
  FUNC0(buffpp, &ephp->cis);

  FUNC0(buffpp, &ephp->af0);
  FUNC0(buffpp, &ephp->af1);
  FUNC0(buffpp, &ephp->af2);
  FUNC0(buffpp, &ephp->tgd);

  ephp->URA = FUNC3(buffpp);

  ephp->L2code = *(*buffpp)++;
  ephp->L2flag = *(*buffpp)++;
}