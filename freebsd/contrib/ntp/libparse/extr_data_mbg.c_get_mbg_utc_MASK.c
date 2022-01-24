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
struct TYPE_3__ {int /*<<< orphan*/  delta_tlsf; int /*<<< orphan*/  delta_tls; void* DNt; int /*<<< orphan*/  WNlsf; int /*<<< orphan*/  A1; int /*<<< orphan*/  A0; int /*<<< orphan*/  t0t; void* valid; scalar_t__ csum; } ;
typedef  TYPE_1__ UTC ;
typedef  scalar_t__ CSUM ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE_DOUBLE ; 
 scalar_t__ IEEE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (unsigned char**) ; 
 scalar_t__ FUNC3 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbg_double ; 

void
FUNC6(
	unsigned char **buffpp,
	UTC *utcp
	)
{
  utcp->csum  = (CSUM) FUNC3(buffpp);
  utcp->valid = FUNC2(buffpp);

  FUNC5(buffpp, &utcp->t0t);

  if (FUNC1(buffpp, IEEE_DOUBLE, &utcp->A0, mbg_double) != IEEE_OK)
    {
      FUNC0(&utcp->A0);
    }

  if (FUNC1(buffpp, IEEE_DOUBLE, &utcp->A1, mbg_double) != IEEE_OK)
    {
      FUNC0(&utcp->A1);
    }

  utcp->WNlsf      = FUNC4(buffpp);
  utcp->DNt        = FUNC2(buffpp);
  utcp->delta_tls  = *(*buffpp)++;
  utcp->delta_tlsf = *(*buffpp)++;
}