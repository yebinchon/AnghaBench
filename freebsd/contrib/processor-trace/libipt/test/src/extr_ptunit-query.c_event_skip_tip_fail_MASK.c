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
struct pt_encoder {int /*<<< orphan*/ * pos; } ;
struct pt_query_decoder {int /*<<< orphan*/  pos; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_event {int dummy; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pt_ipc_sext_48 ; 
 int FUNC1 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int /*<<< orphan*/  pte_bad_query ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 

__attribute__((used)) static struct ptunit_result
FUNC6(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_event event;
	const uint8_t *pos;
	int errcode;

	pos = encoder->pos;
	FUNC0(encoder, 0, pt_ipc_sext_48);
	/* We omit the actual event - we don't get that far, anyway. */

	FUNC2(ptu_sync_decoder, decoder);

	errcode = FUNC1(decoder, &event, sizeof(event));
	FUNC3(errcode, -pte_bad_query);
	FUNC5(decoder->pos, pos);

	return FUNC4();
}