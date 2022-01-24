#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_8__ {unsigned long long ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {scalar_t__ enabled; } ;
struct ptu_decoder_fixture {TYPE_4__ last_ip; int /*<<< orphan*/  config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int /*<<< orphan*/  ip; } ;
struct TYPE_6__ {int mode; unsigned long long ip; } ;
struct TYPE_5__ {unsigned long long ip; } ;
struct TYPE_7__ {TYPE_2__ exec_mode; TYPE_1__ enabled; } ;
struct pt_event {int type; int has_tsc; unsigned long long tsc; TYPE_3__ variant; } ;
typedef  int /*<<< orphan*/  event ;
typedef  enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;
typedef  enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;

/* Variables and functions */
 int /*<<< orphan*/  pt_dfix_max_ip ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int pt_ipc_suppressed ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct pt_packet_ip*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int pte_bad_packet ; 
 int ptem_16bit ; 
 int ptev_enabled ; 
 int ptev_exec_mode ; 
 int pts_eos ; 
 int pts_event_pending ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 struct ptunit_result FUNC6 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result
FUNC8(struct ptu_decoder_fixture *dfix,
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

	FUNC4(ptu_sync_decoder, decoder);
	decoder->enabled = 0;

	errcode = FUNC3(decoder, &event, sizeof(event));
	if (ipc == pt_ipc_suppressed) {
		FUNC5(errcode, -pte_bad_packet);
		FUNC7(addr, 0ull);
	} else {
		FUNC5(errcode, pts_event_pending);
		FUNC5(event.type, ptev_enabled);
		FUNC7(event.variant.enabled.ip, dfix->last_ip.ip);

		if (!tsc)
			FUNC5(event.has_tsc, 0);
		else {
			FUNC5(event.has_tsc, 1);
			FUNC7(event.tsc, tsc);
		}

		errcode = FUNC3(decoder, &event, sizeof(event));
		FUNC5(errcode, pts_eos);
		FUNC5(event.type, ptev_exec_mode);
		FUNC5(event.variant.exec_mode.mode, mode);
		FUNC7(event.variant.exec_mode.ip, dfix->last_ip.ip);

		if (!tsc)
			FUNC5(event.has_tsc, 0);
		else {
			FUNC5(event.has_tsc, 1);
			FUNC7(event.tsc, tsc);
		}
	}

	return FUNC6();
}