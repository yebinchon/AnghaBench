#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_6__ {unsigned long long ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_3__ last_ip; int /*<<< orphan*/  config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int /*<<< orphan*/  ip; } ;
struct TYPE_4__ {unsigned long long ip; int mode; } ;
struct TYPE_5__ {TYPE_1__ exec_mode; } ;
struct pt_event {unsigned long long ip_suppressed; int type; int has_tsc; unsigned long long tsc; TYPE_2__ variant; } ;
typedef  int /*<<< orphan*/  event ;
typedef  enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;
typedef  enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;

/* Variables and functions */
 int /*<<< orphan*/  pt_dfix_max_ip ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int pt_ipc_suppressed ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct pt_packet_ip*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int FUNC4 (struct pt_query_decoder*,unsigned long long*) ; 
 int ptem_16bit ; 
 int ptev_exec_mode ; 
 int pts_eos ; 
 int pts_ip_suppressed ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 struct ptunit_result FUNC7 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result
FUNC10(struct ptu_decoder_fixture *dfix,
		    enum pt_ip_compression ipc, uint64_t tsc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	enum pt_exec_mode mode = ptem_16bit;
	struct pt_packet_ip packet;
	struct pt_event event;
	uint64_t addr = 0ull;
	int errcode;

	packet.ipc = ipc;
	packet.ip = pt_dfix_max_ip;
	FUNC2(&dfix->last_ip, &packet, &dfix->config);

	FUNC0(encoder, mode);
	FUNC1(encoder, packet.ip, packet.ipc);

	FUNC5(ptu_sync_decoder, decoder);

	errcode = FUNC3(decoder, &event, sizeof(event));
	FUNC6(errcode, 0);
	if (ipc == pt_ipc_suppressed)
		FUNC9(event.ip_suppressed, 0);
	else {
		FUNC8(event.ip_suppressed, 0);
		FUNC8(event.variant.exec_mode.ip, dfix->last_ip.ip);
	}
	FUNC6(event.type, ptev_exec_mode);
	FUNC6(event.variant.exec_mode.mode, mode);

	if (!tsc)
		FUNC6(event.has_tsc, 0);
	else {
		FUNC6(event.has_tsc, 1);
		FUNC8(event.tsc, tsc);
	}

	errcode = FUNC4(decoder, &addr);
	if (ipc == pt_ipc_suppressed)
		FUNC6(errcode, pts_ip_suppressed | pts_eos);
	else {
		FUNC6(errcode, pts_eos);
		FUNC8(addr, dfix->last_ip.ip);
	}

	return FUNC7();
}