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
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_1__ last_ip; int /*<<< orphan*/  config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int /*<<< orphan*/  ip; } ;
typedef  enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;

/* Variables and functions */
 int /*<<< orphan*/  pt_dfix_bad_ip ; 
 int /*<<< orphan*/  pt_dfix_sext_ip ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int pt_ipc_suppressed ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct pt_packet_ip*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int pts_eos ; 
 int pts_ip_suppressed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC7(struct ptu_decoder_fixture *dfix,
				  enum pt_ip_compression ipc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_packet_ip packet;
	uint64_t addr = pt_dfix_bad_ip;
	int errcode;

	packet.ipc = ipc;
	packet.ip = pt_dfix_sext_ip;
	FUNC1(&dfix->last_ip, &packet, &dfix->config);

	FUNC0(encoder, packet.ip, packet.ipc);

	FUNC3(ptu_sync_decoder, decoder);

	errcode = FUNC2(decoder, &addr);
	if (ipc == pt_ipc_suppressed) {
		FUNC4(errcode, pts_ip_suppressed | pts_eos);
		FUNC6(addr, pt_dfix_bad_ip);
	} else {
		FUNC4(errcode, pts_eos);
		FUNC6(addr, dfix->last_ip.ip);
	}

	return FUNC5();
}