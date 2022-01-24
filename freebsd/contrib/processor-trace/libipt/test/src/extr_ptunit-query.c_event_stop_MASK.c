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
typedef  int /*<<< orphan*/  uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_event {int type; int has_tsc; int /*<<< orphan*/  tsc; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*) ; 
 int FUNC1 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int ptev_stop ; 
 int pts_eos ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct ptu_decoder_fixture *dfix,
				       uint64_t tsc)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_event event;
	int errcode;

	FUNC0(encoder);

	FUNC4(decoder);

	errcode = FUNC1(decoder, &event, sizeof(event));
	FUNC2(errcode, pts_eos);
	FUNC2(event.type, ptev_stop);

	if (!tsc)
		FUNC2(event.has_tsc, 0);
	else {
		FUNC2(event.has_tsc, 1);
		FUNC5(event.tsc, tsc);
	}

	return FUNC3();
}