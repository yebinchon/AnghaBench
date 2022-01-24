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
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_event {int dummy; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int /*<<< orphan*/  pte_bad_query ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 

__attribute__((used)) static struct ptunit_result
FUNC5(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_event event;
	int errcode;

	FUNC0(encoder, 0, 1);
	FUNC0(encoder, 0, 1);
	/* We omit the actual event - we don't get that far, anyway. */

	FUNC2(ptu_sync_decoder, decoder);

	errcode = FUNC1(decoder, &event, sizeof(event));
	FUNC3(errcode, -pte_bad_query);
	/* The fail position depends on the fixture's header. */

	return FUNC4();
}