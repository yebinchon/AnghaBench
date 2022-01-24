#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct TYPE_3__ {int /*<<< orphan*/  non_root; int /*<<< orphan*/  cr3; } ;
struct TYPE_4__ {TYPE_1__ paging; } ;
struct pt_event {int type; int has_tsc; int /*<<< orphan*/  tsc; TYPE_2__ variant; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int pt_dfix_max_cr3 ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int,int) ; 
 int pt_pl_pip_nr ; 
 int FUNC1 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int ptev_paging ; 
 int pts_eos ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct ptu_decoder_fixture *dfix,
					 uint8_t flags, uint64_t tsc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_event event;
	uint64_t cr3 = pt_dfix_max_cr3;
	int errcode;

	FUNC0(encoder, cr3, flags);

	FUNC2(ptu_sync_decoder, decoder);

	errcode = FUNC1(decoder, &event, sizeof(event));
	FUNC3(errcode, pts_eos);
	FUNC3(event.type, ptev_paging);
	FUNC5(event.variant.paging.cr3, cr3);
	FUNC5(event.variant.paging.non_root, (flags & pt_pl_pip_nr) != 0);

	if (!tsc)
		FUNC3(event.has_tsc, 0);
	else {
		FUNC3(event.has_tsc, 1);
		FUNC5(event.tsc, tsc);
	}

	return FUNC4();
}