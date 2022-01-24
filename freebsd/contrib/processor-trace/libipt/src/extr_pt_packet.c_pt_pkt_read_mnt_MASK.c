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
typedef  int /*<<< orphan*/  uint8_t ;
struct pt_packet_mnt {int /*<<< orphan*/  payload; } ;
struct pt_config {int /*<<< orphan*/  const* end; } ;

/* Variables and functions */
 int pt_opcs_mnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pt_pl_mnt_size ; 
 int pte_eos ; 
 int pte_internal ; 
 int ptps_mnt ; 

int FUNC1(struct pt_packet_mnt *packet, const uint8_t *pos,
		    const struct pt_config *config)
{
	if (!packet || !pos || !config)
		return -pte_internal;

	if (config->end < pos + ptps_mnt)
		return -pte_eos;

	packet->payload = FUNC0(pos + pt_opcs_mnt, pt_pl_mnt_size);

	return ptps_mnt;
}