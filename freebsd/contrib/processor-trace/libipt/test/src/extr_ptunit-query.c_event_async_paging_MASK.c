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
typedef  int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  non_root; int /*<<< orphan*/  cr3; } ;
struct TYPE_4__ {int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
struct TYPE_6__ {TYPE_2__ async_paging; TYPE_1__ async_branch; } ;
struct pt_event {int type; int has_tsc; int /*<<< orphan*/  tsc; TYPE_3__ variant; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int pt_dfix_max_cr3 ; 
 int pt_dfix_sext_ip ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_encoder*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pt_ipc_sext_48 ; 
 int /*<<< orphan*/  pt_ipc_update_16 ; 
 int pt_pl_pip_nr ; 
 int FUNC3 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int ptev_async_branch ; 
 int ptev_async_paging ; 
 int pts_eos ; 
 int pts_event_pending ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 struct ptunit_result FUNC6 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result
FUNC8(struct ptu_decoder_fixture *dfix, uint8_t flags,
		   uint64_t tsc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_event event;
	uint64_t to = pt_dfix_sext_ip, from = to & ~0xffffull;
	uint64_t cr3 = pt_dfix_max_cr3;
	int errcode;

	FUNC0(encoder, from, pt_ipc_sext_48);
	FUNC1(encoder, cr3, flags);
	FUNC2(encoder, to, pt_ipc_update_16);

	FUNC4(ptu_sync_decoder, decoder);

	errcode = FUNC3(decoder, &event, sizeof(event));
	FUNC5(errcode, pts_event_pending);
	FUNC5(event.type, ptev_async_branch);
	FUNC7(event.variant.async_branch.from, from);
	FUNC7(event.variant.async_branch.to, to);

	if (!tsc)
		FUNC5(event.has_tsc, 0);
	else {
		FUNC5(event.has_tsc, 1);
		FUNC7(event.tsc, tsc);
	}

	errcode = FUNC3(decoder, &event, sizeof(event));
	FUNC5(errcode, pts_eos);
	FUNC5(event.type, ptev_async_paging);
	FUNC7(event.variant.async_paging.cr3, cr3);
	FUNC7(event.variant.async_paging.non_root,
		    (flags & pt_pl_pip_nr) != 0);
	FUNC7(event.variant.async_paging.ip, to);

	if (!tsc)
		FUNC5(event.has_tsc, 0);
	else {
		FUNC5(event.has_tsc, 1);
		FUNC7(event.tsc, tsc);
	}

	return FUNC6();
}