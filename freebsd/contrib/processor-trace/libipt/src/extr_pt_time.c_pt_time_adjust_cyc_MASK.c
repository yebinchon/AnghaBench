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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct pt_time {scalar_t__ ctc_cyc; scalar_t__ ctc; } ;
struct pt_config {int dummy; } ;

/* Variables and functions */
 int pt_tcal_fcr_shr ; 
 int FUNC0 (scalar_t__*,scalar_t__,scalar_t__,struct pt_config const*) ; 
 int FUNC1 (int*,scalar_t__,struct pt_config const*) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC2(uint64_t *cyc, const struct pt_time *time,
			      const struct pt_config *config, uint64_t fcr)
{
	uint32_t last_ctc, ctc, ctc_delta;
	uint64_t fc, total_cyc, old_cyc;
	int errcode;

	if (!time || !config || !fcr)
		return -pte_internal;

	last_ctc = time->ctc_cyc;
	ctc = time->ctc;

	/* There is nothing to do if this is the current MTC period. */
	if (ctc == last_ctc)
		return 0;

	/* Calibration computes
	 *
	 *   fc  = (ctc_delta * cpuid[0x15].ebx) / cpuid[0x15].eax.
	 *   fcr = (fc << pt_tcal_fcr_shr) / cyc
	 *
	 * So cyc = (fc << pt_tcal_fcr_shr) / fcr.
	 */

	errcode = FUNC0(&ctc_delta, ctc, last_ctc, config);
	if (errcode < 0)
		return errcode;

	errcode = FUNC1(&fc, ctc_delta, config);
	if (errcode < 0)
		return errcode;

	old_cyc = (fc << pt_tcal_fcr_shr) / fcr;
	total_cyc = *cyc;

	/* Make sure we don't wrap around.  If we would, attribute the entire
	 * CYC payload to any previous MTC period.
	 *
	 * We lost an unknown portion of the CYC payload for the current MTC
	 * period, but it's usually better to run too slow than too fast.
	 */
	if (total_cyc < old_cyc)
		total_cyc = old_cyc;

	*cyc = total_cyc - old_cyc;
	return 0;
}