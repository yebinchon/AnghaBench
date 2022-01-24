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
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_3__ last_ip; int /*<<< orphan*/  config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int /*<<< orphan*/  ip; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip; } ;
struct TYPE_5__ {TYPE_1__ disabled; } ;
struct pt_event {int type; int has_tsc; int /*<<< orphan*/  tsc; TYPE_2__ variant; int /*<<< orphan*/  ip_suppressed; } ;
typedef  int /*<<< orphan*/  event ;
typedef  enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;

/* Variables and functions */
 int /*<<< orphan*/  pt_dfix_sext_ip ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int pt_ipc_suppressed ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct pt_packet_ip*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int ptev_disabled ; 
 int pts_eos ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC8(struct ptu_decoder_fixture *dfix,
					   enum pt_ip_compression ipc,
					   uint64_t tsc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_packet_ip packet;
	struct pt_event event;
	int errcode;

	packet.ipc = ipc;
	packet.ip = pt_dfix_sext_ip;
	FUNC1(&dfix->last_ip, &packet, &dfix->config);

	FUNC0(encoder, packet.ip, packet.ipc);

	FUNC3(ptu_sync_decoder, decoder);

	errcode = FUNC2(decoder, &event, sizeof(event));
	FUNC4(errcode, pts_eos);
	if (ipc == pt_ipc_suppressed)
		FUNC7(event.ip_suppressed, 0);
	else {
		FUNC6(event.ip_suppressed, 0);
		FUNC6(event.variant.disabled.ip, dfix->last_ip.ip);
	}
	FUNC4(event.type, ptev_disabled);

	if (!tsc)
		FUNC4(event.has_tsc, 0);
	else {
		FUNC4(event.has_tsc, 1);
		FUNC6(event.tsc, tsc);
	}

	return FUNC5();
}