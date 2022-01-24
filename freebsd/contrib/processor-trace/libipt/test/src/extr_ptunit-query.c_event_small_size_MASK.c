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
typedef  int /*<<< orphan*/  uint8_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_event {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pt_ipc_sext_48 ; 
 int FUNC2 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int /*<<< orphan*/  ptev_enabled ; 
 int /*<<< orphan*/  pts_eos ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC7(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	union {
		struct pt_event event;
		uint8_t buffer[41];
	} variant;
	int errcode;

	FUNC0(variant.buffer, 0xcd, sizeof(variant.buffer));

	FUNC1(encoder, 0ull, pt_ipc_sext_48);

	FUNC3(ptu_sync_decoder, decoder);

	errcode = FUNC2(decoder, &variant.event, 40);
	FUNC4(errcode, pts_eos);
	FUNC4(variant.event.type, ptev_enabled);
	FUNC6(variant.buffer[40], 0xcd);

	return FUNC5();
}