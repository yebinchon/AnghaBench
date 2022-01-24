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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_3__ last_ip; int /*<<< orphan*/  config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int /*<<< orphan*/  ip; } ;
struct TYPE_4__ {int speculative; int aborted; int /*<<< orphan*/  ip; } ;
struct TYPE_5__ {TYPE_1__ tsx; } ;
struct pt_event {int type; int has_tsc; int /*<<< orphan*/  tsc; TYPE_2__ variant; int /*<<< orphan*/  ip_suppressed; } ;
typedef  int /*<<< orphan*/  event ;
typedef  enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;

/* Variables and functions */
 int /*<<< orphan*/  pt_dfix_max_ip ; 
 int /*<<< orphan*/  pt_dfix_sext_ip ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int pt_ipc_sext_48 ; 
 int pt_ipc_suppressed ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct pt_packet_ip*,int /*<<< orphan*/ *) ; 
 int pt_mob_tsx_abrt ; 
 int pt_mob_tsx_intx ; 
 int FUNC4 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int FUNC5 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int ptev_tsx ; 
 int pts_eos ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 struct ptunit_result FUNC8 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC11(struct ptu_decoder_fixture *dfix,
					  enum pt_ip_compression ipc,
					  uint8_t flags, uint64_t tsc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_packet_ip fup, tip;
	struct pt_event event;
	uint64_t addr = 0;
	int errcode;

	fup.ipc = ipc;
	fup.ip = pt_dfix_max_ip;
	FUNC3(&dfix->last_ip, &fup, &dfix->config);

	tip.ipc = pt_ipc_sext_48;
	tip.ip = pt_dfix_sext_ip;

	FUNC1(encoder, flags);
	FUNC0(encoder, fup.ip, fup.ipc);
	FUNC2(encoder, tip.ip, tip.ipc);

	FUNC6(ptu_sync_decoder, decoder);

	errcode = FUNC4(decoder, &event, sizeof(event));
	FUNC7(errcode, 0);
	if (ipc == pt_ipc_suppressed)
		FUNC10(event.ip_suppressed, 0);
	else {
		FUNC9(event.ip_suppressed, 0);
		FUNC9(event.variant.tsx.ip, dfix->last_ip.ip);
	}
	FUNC7(event.type, ptev_tsx);
	FUNC7(event.variant.tsx.speculative,
		   (flags & pt_mob_tsx_intx) != 0);
	FUNC7(event.variant.tsx.aborted,
		   (flags & pt_mob_tsx_abrt) != 0);

	if (!tsc)
		FUNC7(event.has_tsc, 0);
	else {
		FUNC7(event.has_tsc, 1);
		FUNC9(event.tsc, tsc);
	}

	errcode = FUNC5(decoder, &addr);
	FUNC7(errcode, pts_eos);
	FUNC9(addr, tip.ip);

	return FUNC8();
}