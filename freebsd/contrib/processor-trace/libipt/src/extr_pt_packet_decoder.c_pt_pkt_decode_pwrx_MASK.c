#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct pt_packet_decoder {int /*<<< orphan*/  config; int /*<<< orphan*/  pos; } ;
struct TYPE_2__ {int /*<<< orphan*/  pwrx; } ;
struct pt_packet {int /*<<< orphan*/  size; int /*<<< orphan*/  type; TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  ppt_pwrx ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int pte_internal ; 

int FUNC1(struct pt_packet_decoder *decoder,
		       struct pt_packet *packet)
{
	int size;

	if (!decoder || !packet)
		return -pte_internal;

	size = FUNC0(&packet->payload.pwrx, decoder->pos,
				&decoder->config);
	if (size < 0)
		return size;

	packet->type = ppt_pwrx;
	packet->size = (uint8_t) size;

	return size;
}