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
struct pt_time_cal {int dummy; } ;
struct pt_packet_tma {int dummy; } ;
struct pt_config {int dummy; } ;

/* Variables and functions */

int FUNC0(struct pt_time_cal *tcal,
		      const struct pt_packet_tma *packet,
		      const struct pt_config *config)
{
	(void) tcal;
	(void) packet;
	(void) config;

	/* Nothing to do. */
	return 0;
}