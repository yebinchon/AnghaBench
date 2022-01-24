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
struct TYPE_3__ {scalar_t__ dten_probegen; int dten_ndesc; int dten_maxdesc; int /*<<< orphan*/ ** dten_desc; int /*<<< orphan*/ * dten_prev; int /*<<< orphan*/ * dten_next; } ;
typedef  TYPE_1__ dtrace_enabling_t ;
typedef  int /*<<< orphan*/  dtrace_ecbdesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/ ** FUNC3 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(dtrace_enabling_t *enab, dtrace_ecbdesc_t *ecb)
{
	dtrace_ecbdesc_t **ndesc;
	size_t osize, nsize;

	/*
	 * We can't add to enablings after we've enabled them, or after we've
	 * retained them.
	 */
	FUNC0(enab->dten_probegen == 0);
	FUNC0(enab->dten_next == NULL && enab->dten_prev == NULL);

	if (enab->dten_ndesc < enab->dten_maxdesc) {
		enab->dten_desc[enab->dten_ndesc++] = ecb;
		return;
	}

	osize = enab->dten_maxdesc * sizeof (dtrace_enabling_t *);

	if (enab->dten_maxdesc == 0) {
		enab->dten_maxdesc = 1;
	} else {
		enab->dten_maxdesc <<= 1;
	}

	FUNC0(enab->dten_ndesc < enab->dten_maxdesc);

	nsize = enab->dten_maxdesc * sizeof (dtrace_enabling_t *);
	ndesc = FUNC3(nsize, KM_SLEEP);
	FUNC1(enab->dten_desc, ndesc, osize);
	if (enab->dten_desc != NULL)
		FUNC2(enab->dten_desc, osize);

	enab->dten_desc = ndesc;
	enab->dten_desc[enab->dten_ndesc++] = ecb;
}