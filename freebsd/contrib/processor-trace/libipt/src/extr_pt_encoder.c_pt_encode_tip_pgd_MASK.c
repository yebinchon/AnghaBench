#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int ipc; int /*<<< orphan*/  ip; } ;
struct TYPE_4__ {TYPE_1__ ip; } ;
struct pt_packet {TYPE_2__ payload; int /*<<< orphan*/  type; } ;
struct pt_encoder {int dummy; } ;
typedef  enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;

/* Variables and functions */
 int /*<<< orphan*/  ppt_tip_pgd ; 
 int FUNC0 (struct pt_encoder*,struct pt_packet*) ; 

int FUNC1(struct pt_encoder *encoder, uint64_t ip,
		      enum pt_ip_compression ipc)
{
	struct pt_packet packet;

	packet.type = ppt_tip_pgd;
	packet.payload.ip.ip = ip;
	packet.payload.ip.ipc = ipc;

	return FUNC0(encoder, &packet);
}