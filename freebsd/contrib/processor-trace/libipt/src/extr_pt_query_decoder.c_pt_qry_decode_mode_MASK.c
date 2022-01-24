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
struct pt_query_decoder {int pos; int /*<<< orphan*/  config; } ;
struct TYPE_2__ {int /*<<< orphan*/  tsx; int /*<<< orphan*/  exec; } ;
struct pt_packet_mode {int leaf; TYPE_1__ bits; } ;

/* Variables and functions */
#define  pt_mol_exec 129 
#define  pt_mol_tsx 128 
 int FUNC0 (struct pt_packet_mode*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int pte_internal ; 

int FUNC3(struct pt_query_decoder *decoder)
{
	struct pt_packet_mode packet;
	int size, errcode;

	if (!decoder)
		return -pte_internal;

	size = FUNC0(&packet, decoder->pos, &decoder->config);
	if (size < 0)
		return size;

	errcode = 0;
	switch (packet.leaf) {
	case pt_mol_exec:
		errcode = FUNC1(decoder, &packet.bits.exec);
		break;

	case pt_mol_tsx:
		errcode = FUNC2(decoder, &packet.bits.tsx);
		break;
	}

	if (errcode < 0)
		return errcode;

	decoder->pos += size;
	return 0;
}