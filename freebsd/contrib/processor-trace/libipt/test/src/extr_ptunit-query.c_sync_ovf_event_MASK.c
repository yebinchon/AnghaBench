#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_9__ {int ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_4__ last_ip; int /*<<< orphan*/  config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int ip; } ;
struct TYPE_7__ {int /*<<< orphan*/  ip; } ;
struct TYPE_6__ {int speculative; int aborted; int /*<<< orphan*/  ip; } ;
struct TYPE_8__ {TYPE_2__ overflow; TYPE_1__ tsx; } ;
struct pt_event {int type; int has_tsc; int /*<<< orphan*/  tsc; TYPE_3__ variant; int /*<<< orphan*/  status_update; } ;
typedef  int /*<<< orphan*/  event ;
typedef  enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;

/* Variables and functions */
 int pt_dfix_max_ip ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_encoder*,int) ; 
#define  pt_ipc_full 133 
#define  pt_ipc_sext_48 132 
#define  pt_ipc_suppressed 131 
#define  pt_ipc_update_16 130 
#define  pt_ipc_update_32 129 
#define  pt_ipc_update_48 128 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,struct pt_packet_ip*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int FUNC8 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int pte_noip ; 
 int ptev_overflow ; 
 int ptev_tsx ; 
 int pts_eos ; 
 int pts_event_pending ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 struct ptunit_result FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC13(struct ptu_decoder_fixture *dfix,
					   enum pt_ip_compression ipc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_packet_ip fup, ovf;
	struct pt_event event;
	uint64_t addr = 0;
	int errcode;

	fup.ipc = pt_ipc_sext_48;
	fup.ip = pt_dfix_max_ip;

	ovf.ipc = ipc;
	ovf.ip = 0xccull;

	FUNC5(&dfix->last_ip);
	FUNC6(&dfix->last_ip, &ovf, &dfix->config);

	FUNC3(encoder);
	FUNC0(encoder, fup.ip, fup.ipc);
	FUNC1(encoder, 0);
	FUNC4(encoder, 0x1000);
	FUNC2(encoder);
	FUNC0(encoder, ovf.ip, ovf.ipc);

	errcode = FUNC8(decoder, &addr);
	FUNC9(errcode, pts_event_pending);
	FUNC11(addr, fup.ip);

	errcode = FUNC7(decoder, &event, sizeof(event));
	FUNC9(errcode, pts_event_pending);
	FUNC12(event.status_update, 0);
	FUNC9(event.type, ptev_tsx);
	FUNC9(event.variant.tsx.speculative, 0);
	FUNC9(event.variant.tsx.aborted, 0);
	FUNC11(event.variant.tsx.ip, fup.ip);
	FUNC9(event.has_tsc, 1);
	FUNC11(event.tsc, 0x1000);

	errcode = FUNC7(decoder, &event, sizeof(event));
	switch (ipc) {
	case pt_ipc_suppressed:
		FUNC9(errcode, -pte_noip);
		return FUNC10();

	case pt_ipc_update_16:
	case pt_ipc_update_32:
	case pt_ipc_update_48:
	case pt_ipc_sext_48:
	case pt_ipc_full:
		FUNC9(errcode, pts_eos);
		FUNC9(event.type, ptev_overflow);
		FUNC11(event.variant.overflow.ip, dfix->last_ip.ip);
		FUNC9(event.has_tsc, 1);
		FUNC11(event.tsc, 0x1000);
		break;
	}

	return FUNC10();
}