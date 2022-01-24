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
struct TYPE_3__ {int /*<<< orphan*/ * health; int /*<<< orphan*/ * cfg; int /*<<< orphan*/  t0a; int /*<<< orphan*/  tot_63; int /*<<< orphan*/  tot_51; int /*<<< orphan*/  valid; scalar_t__ csum; } ;
typedef  scalar_t__ CSUM ;
typedef  TYPE_1__ CFGH ;

/* Variables and functions */
 int N_SVNO_GPS ; 
 int /*<<< orphan*/  FUNC0 (unsigned char**) ; 
 scalar_t__ FUNC1 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,int /*<<< orphan*/ *) ; 

void
FUNC5(
	unsigned char **buffpp,
	CFGH *cfghp
	)
{
  int i;

  cfghp->csum = (CSUM) FUNC1(buffpp);
  cfghp->valid = FUNC0(buffpp);
  FUNC4(buffpp, &cfghp->tot_51);
  FUNC4(buffpp, &cfghp->tot_63);
  FUNC4(buffpp, &cfghp->t0a);

  for (i = 0; i < N_SVNO_GPS; i++)
    {
      FUNC2(buffpp, &cfghp->cfg[i]);
    }

  for (i = 0; i < N_SVNO_GPS; i++)
    {
      FUNC3(buffpp, &cfghp->health[i]);
    }
}