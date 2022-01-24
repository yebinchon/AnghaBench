#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dten_ndesc; int dten_error; int /*<<< orphan*/  dten_probegen; TYPE_2__* dten_current; TYPE_2__** dten_desc; } ;
typedef  TYPE_1__ dtrace_enabling_t ;
struct TYPE_6__ {int /*<<< orphan*/  dted_probe; } ;
typedef  TYPE_2__ dtrace_ecbdesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CE_WARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,int) ; 
 int /*<<< orphan*/  cpu_lock ; 
 int /*<<< orphan*/  dtrace_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  dtrace_probegen ; 

__attribute__((used)) static int
FUNC4(dtrace_enabling_t *enab, int *nmatched)
{
	int i = 0;
	int matched = 0;

	FUNC0(FUNC1(&cpu_lock));
	FUNC0(FUNC1(&dtrace_lock));

	for (i = 0; i < enab->dten_ndesc; i++) {
		dtrace_ecbdesc_t *ep = enab->dten_desc[i];

		enab->dten_current = ep;
		enab->dten_error = 0;

		matched += FUNC3(&ep->dted_probe, enab);

		if (enab->dten_error != 0) {
			/*
			 * If we get an error half-way through enabling the
			 * probes, we kick out -- perhaps with some number of
			 * them enabled.  Leaving enabled probes enabled may
			 * be slightly confusing for user-level, but we expect
			 * that no one will attempt to actually drive on in
			 * the face of such errors.  If this is an anonymous
			 * enabling (indicated with a NULL nmatched pointer),
			 * we cmn_err() a message.  We aren't expecting to
			 * get such an error -- such as it can exist at all,
			 * it would be a result of corrupted DOF in the driver
			 * properties.
			 */
			if (nmatched == NULL) {
				FUNC2(CE_WARN, "dtrace_enabling_match() "
				    "error on %p: %d", (void *)ep,
				    enab->dten_error);
			}

			return (enab->dten_error);
		}
	}

	enab->dten_probegen = dtrace_probegen;
	if (nmatched != NULL)
		*nmatched = matched;

	return (0);
}