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
struct TYPE_3__ {int /*<<< orphan*/  af1; int /*<<< orphan*/  af0; int /*<<< orphan*/  deltai; int /*<<< orphan*/  OMEGADOT; int /*<<< orphan*/  OMEGA0; int /*<<< orphan*/  omega; int /*<<< orphan*/  M0; int /*<<< orphan*/  e; int /*<<< orphan*/  sqrt_A; int /*<<< orphan*/  t0a; scalar_t__ health; int /*<<< orphan*/  valid; scalar_t__ csum; } ;
typedef  scalar_t__ HEALTH ;
typedef  scalar_t__ CSUM ;
typedef  TYPE_1__ ALM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**) ; 
 scalar_t__ FUNC2 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,int /*<<< orphan*/ *) ; 

void
FUNC4(
	unsigned char **buffpp,
	ALM *almp
	)
{
  almp->csum   = (CSUM) FUNC2(buffpp);
  almp->valid  = FUNC1(buffpp);

  almp->health = (HEALTH) FUNC2(buffpp);
  FUNC3(buffpp, &almp->t0a);


  FUNC0(buffpp, &almp->sqrt_A);
  FUNC0(buffpp, &almp->e);

  FUNC0(buffpp, &almp->M0);
  FUNC0(buffpp, &almp->omega);
  FUNC0(buffpp, &almp->OMEGA0);
  FUNC0(buffpp, &almp->OMEGADOT);
  FUNC0(buffpp, &almp->deltai);
  FUNC0(buffpp, &almp->af0);
  FUNC0(buffpp, &almp->af1);
}