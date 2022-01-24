#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_3__ last_ip; int /*<<< orphan*/  config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int ip; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip; } ;
struct TYPE_6__ {TYPE_1__ overflow; } ;
struct pt_event {int type; int has_tsc; int /*<<< orphan*/  tsc; TYPE_2__ variant; } ;
typedef  int /*<<< orphan*/  event ;
typedef  enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*) ; 
#define  pt_ipc_full 133 
#define  pt_ipc_sext_48 132 
#define  pt_ipc_suppressed 131 
#define  pt_ipc_update_16 130 
#define  pt_ipc_update_32 129 
#define  pt_ipc_update_48 128 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct pt_packet_ip*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int pte_noip ; 
 int ptev_overflow ; 
 int pts_eos ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 struct ptunit_result FUNC7 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC9(struct ptu_decoder_fixture *dfix,
					       enum pt_ip_compression ipc,
					       uint64_t tsc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_event event;
	struct pt_packet_ip packet;
	int errcode;

	packet.ipc = ipc;
	packet.ip = 0xccull;

	FUNC2(&dfix->last_ip);
	FUNC3(&dfix->last_ip, &packet, &dfix->config);

	FUNC1(encoder);
	FUNC0(encoder, packet.ip, packet.ipc);

	FUNC5(ptu_sync_decoder, decoder);

	errcode = FUNC4(decoder, &event, sizeof(event));
	switch (ipc) {
	case pt_ipc_suppressed:
		FUNC6(errcode, -pte_noip);
		break;

	case pt_ipc_update_16:
	case pt_ipc_update_32:
	case pt_ipc_update_48:
	case pt_ipc_sext_48:
	case pt_ipc_full:
		FUNC6(errcode, pts_eos);
		FUNC6(event.type, ptev_overflow);
		FUNC8(event.variant.overflow.ip, dfix->last_ip.ip);

		if (!tsc)
			FUNC6(event.has_tsc, 0);
		else {
			FUNC6(event.has_tsc, 1);
			FUNC8(event.tsc, tsc);
		}
		break;
	}

	return FUNC7();
}