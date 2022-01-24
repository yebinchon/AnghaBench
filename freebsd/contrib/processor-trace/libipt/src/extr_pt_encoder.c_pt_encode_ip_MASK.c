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
typedef  int uint8_t ;
struct pt_packet_ip {int ipc; int /*<<< orphan*/  ip; } ;
struct pt_encoder {int* pos; } ;
typedef  enum pt_opcode { ____Placeholder_pt_opcode } pt_opcode ;

/* Variables and functions */
 int* FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int pt_opm_ipc_shr ; 
 int FUNC2 (struct pt_encoder*,unsigned int) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC3(struct pt_encoder *encoder, enum pt_opcode op,
			const struct pt_packet_ip *packet)
{
	uint8_t *pos;
	uint8_t opc, ipc;
	int size, errcode;

	if (!encoder || !packet)
		return pte_internal;

	size = FUNC1(packet->ipc);
	if (size < 0)
		return size;

	errcode = FUNC2(encoder,
			     /* opc size = */ 1u + (unsigned int) size);
	if (errcode < 0)
		return errcode;

	/* We already checked the ipc in pt_ipc_size(). */
	ipc = (uint8_t) (packet->ipc << pt_opm_ipc_shr);
	opc = (uint8_t) op;

	pos = encoder->pos;
	*pos++ = opc | ipc;

	encoder->pos = FUNC0(pos, packet->ip, size);
	return /* opc size = */ 1 + size;
}