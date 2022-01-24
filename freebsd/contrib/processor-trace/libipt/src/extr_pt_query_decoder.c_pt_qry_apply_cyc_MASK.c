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
typedef  unsigned long long uint64_t ;
struct pt_time_cal {int dummy; } ;
struct pt_time {int dummy; } ;
struct pt_packet_cyc {int dummy; } ;
struct pt_config {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned long long*,struct pt_time_cal*) ; 
 int FUNC1 (struct pt_time_cal*,struct pt_packet_cyc const*,struct pt_config const*) ; 
 int FUNC2 (struct pt_time*,struct pt_packet_cyc const*,struct pt_config const*,unsigned long long) ; 
 int pte_bad_config ; 
 int pte_no_time ; 

__attribute__((used)) static int FUNC3(struct pt_time *time, struct pt_time_cal *tcal,
			    const struct pt_packet_cyc *packet,
			    const struct pt_config *config)
{
	uint64_t fcr;
	int errcode;

	/* We ignore configuration errors.  They will result in imprecise
	 * calibration which will result in imprecise cycle-accurate timing.
	 *
	 * We currently do not track them.
	 */
	errcode = FUNC1(tcal, packet, config);
	if (errcode < 0 && (errcode != -pte_bad_config))
		return errcode;

	/* We need the FastCounter to Cycles ratio below.  Fall back to
	 * an invalid ratio of 0 if calibration has not kicked in, yet.
	 *
	 * This will be tracked as packet loss in struct pt_time.
	 */
	errcode = FUNC0(&fcr, tcal);
	if (errcode < 0) {
		if (errcode == -pte_no_time)
			fcr = 0ull;
		else
			return errcode;
	}

	/* We ignore configuration errors.  They will result in imprecise
	 * timing and are tracked as packet losses in struct pt_time.
	 */
	errcode = FUNC2(time, packet, config, fcr);
	if (errcode < 0 && (errcode != -pte_bad_config))
		return errcode;

	return 0;
}