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
struct pt_packet_decoder {int /*<<< orphan*/  config; int /*<<< orphan*/  pos; } ;
struct pt_packet {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int pte_internal ; 

int FUNC1(struct pt_packet_decoder *decoder,
			  struct pt_packet *packet)
{
	int size;

	if (!decoder)
		return -pte_internal;

	size = FUNC0(packet, decoder->pos, &decoder->config);
	if (size < 0)
		return size;

	return size;
}