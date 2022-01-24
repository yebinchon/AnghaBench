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
typedef  unsigned long long uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_3__ last_ip; int /*<<< orphan*/  config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int ip; } ;
struct TYPE_5__ {unsigned long long ip; int speculative; int aborted; } ;
struct TYPE_6__ {TYPE_1__ tsx; } ;
struct pt_event {unsigned long long status_update; unsigned long long ip_suppressed; int type; int has_tsc; TYPE_2__ variant; } ;
typedef  int /*<<< orphan*/  event ;
typedef  enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_encoder*) ; 
#define  pt_ipc_full 133 
#define  pt_ipc_sext_48 132 
#define  pt_ipc_suppressed 131 
#define  pt_ipc_update_16 130 
#define  pt_ipc_update_32 129 
#define  pt_ipc_update_48 128 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct pt_packet_ip*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pt_mob_tsx_intx ; 
 int FUNC6 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int FUNC7 (struct pt_query_decoder*,unsigned long long*) ; 
 int ptev_tsx ; 
 int pts_eos ; 
 int pts_event_pending ; 
 int pts_ip_suppressed ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 struct ptunit_result FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC12(struct ptu_decoder_fixture *dfix,
				       enum pt_ip_compression ipc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_packet_ip packet;
	struct pt_event event;
	uint64_t addr = 0ull;
	int errcode;

	packet.ipc = ipc;
	packet.ip = 0xccull;

	FUNC4(&dfix->last_ip);
	FUNC5(&dfix->last_ip, &packet, &dfix->config);

	FUNC2(encoder);
	FUNC1(encoder, pt_mob_tsx_intx);
	FUNC0(encoder, packet.ip, packet.ipc);
	FUNC3(encoder);

	errcode = FUNC7(decoder, &addr);
	switch (ipc) {
	case pt_ipc_suppressed:
		FUNC8(errcode, (pts_event_pending | pts_ip_suppressed));
		break;

	case pt_ipc_update_16:
	case pt_ipc_update_32:
	case pt_ipc_update_48:
	case pt_ipc_sext_48:
	case pt_ipc_full:
		FUNC8(errcode, pts_event_pending);
		FUNC10(addr, dfix->last_ip.ip);
		break;
	}

	errcode = FUNC6(decoder, &event, sizeof(event));
	FUNC8(errcode, pts_eos);
	FUNC11(event.status_update, 0);
	if (ipc == pt_ipc_suppressed)
		FUNC11(event.ip_suppressed, 0);
	else {
		FUNC10(event.ip_suppressed, 0);
		FUNC10(event.variant.tsx.ip, dfix->last_ip.ip);
	}
	FUNC8(event.type, ptev_tsx);
	FUNC8(event.variant.tsx.speculative, 1);
	FUNC8(event.variant.tsx.aborted, 0);
	FUNC8(event.has_tsc, 0);

	return FUNC9();
}