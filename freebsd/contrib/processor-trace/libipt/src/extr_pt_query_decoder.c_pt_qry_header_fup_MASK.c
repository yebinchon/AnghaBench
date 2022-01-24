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
struct TYPE_5__ {scalar_t__ bdm70; } ;
struct TYPE_6__ {TYPE_1__ errata; } ;
struct pt_query_decoder {int enabled; TYPE_2__ config; int /*<<< orphan*/  ip; int /*<<< orphan*/  pos; } ;
struct pt_packet_ip {scalar_t__ ipc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ pt_ipc_suppressed ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_packet_ip*,TYPE_2__*) ; 
 int FUNC2 (struct pt_packet_ip*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (struct pt_query_decoder*,int) ; 
 int pte_internal ; 

int FUNC4(struct pt_query_decoder *decoder)
{
	struct pt_packet_ip packet;
	int errcode, size;

	if (!decoder)
		return -pte_internal;

	size = FUNC2(&packet, decoder->pos, &decoder->config);
	if (size < 0)
		return size;

	if (decoder->config.errata.bdm70 && !decoder->enabled) {
		errcode = FUNC0(decoder->pos + size,
					      &decoder->config);
		if (errcode < 0)
			return errcode;

		if (errcode)
			return FUNC3(decoder, size);
	}

	errcode = FUNC1(&decoder->ip, &packet, &decoder->config);
	if (errcode < 0)
		return errcode;

	/* Tracing is enabled if we have an IP in the header. */
	if (packet.ipc != pt_ipc_suppressed)
		decoder->enabled = 1;

	return FUNC3(decoder, size);
}