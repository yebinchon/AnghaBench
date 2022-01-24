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
struct pt_event {int type; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int FUNC0 (struct pt_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_encoder*) ; 
 int FUNC4 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int FUNC5 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_eos ; 
 int /*<<< orphan*/  ptem_64bit ; 
 int /*<<< orphan*/  ptev_exec_mode ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result
FUNC12(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	struct pt_event event;
	uint64_t sync[2], offset, ip;
	int errcode;

	/* Check that we can use sync_backward to re-sync at the current trace
	 * segment as well as to find the previous trace segment.
	 */

	errcode = FUNC0(encoder, &sync[0]);
	FUNC9(errcode, 0);

	FUNC2(encoder);
	FUNC1(encoder, ptem_64bit);
	FUNC3(encoder);

	errcode = FUNC0(encoder, &sync[1]);
	FUNC9(errcode, 0);

	FUNC2(encoder);
	FUNC1(encoder, ptem_64bit);
	FUNC3(encoder);


	errcode = FUNC7(decoder, &ip);
	FUNC9(errcode, 0);

	errcode = FUNC5(decoder, &offset);
	FUNC8(errcode, 0);
	FUNC11(offset, sync[0]);

	errcode = FUNC4(decoder, &event, sizeof(event));
	FUNC9(errcode, 0);
	FUNC8(event.type, ptev_exec_mode);

	errcode = FUNC4(decoder, &event, sizeof(event));
	FUNC9(errcode, 0);
	FUNC8(event.type, ptev_exec_mode);

	errcode = FUNC6(decoder, &ip);
	FUNC9(errcode, 0);

	errcode = FUNC5(decoder, &offset);
	FUNC8(errcode, 0);
	FUNC11(offset, sync[1]);

	errcode = FUNC6(decoder, &ip);
	FUNC9(errcode, 0);

	errcode = FUNC5(decoder, &offset);
	FUNC8(errcode, 0);
	FUNC11(offset, sync[0]);

	errcode = FUNC6(decoder, &ip);
	FUNC8(errcode, -pte_eos);

	return FUNC10();
}