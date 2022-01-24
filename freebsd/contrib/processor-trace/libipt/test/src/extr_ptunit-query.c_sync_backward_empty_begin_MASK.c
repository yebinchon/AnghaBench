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

/* Variables and functions */
 int FUNC0 (struct pt_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_encoder*) ; 
 int FUNC4 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_eos ; 
 int /*<<< orphan*/  ptem_64bit ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result
FUNC10(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	uint64_t sync[3], offset, ip;
	int errcode;

	/* Check that we can use repeated pt_qry_sync_backward() to iterate over
	 * synchronization points in backwards order.
	 *
	 * There's an empty PSB+ at the beginning.  We skip it.
	 */

	errcode = FUNC0(encoder, &sync[0]);
	FUNC7(errcode, 0);

	FUNC2(encoder);
	FUNC3(encoder);

	errcode = FUNC0(encoder, &sync[1]);
	FUNC7(errcode, 0);

	FUNC2(encoder);
	FUNC1(encoder, ptem_64bit);
	FUNC3(encoder);

	errcode = FUNC0(encoder, &sync[2]);
	FUNC7(errcode, 0);

	FUNC2(encoder);
	FUNC1(encoder, ptem_64bit);
	FUNC3(encoder);

	/* Synchronize repeatedly and check that we reach each PSB in the
	 * correct order.
	 */

	errcode = FUNC5(decoder, &ip);
	FUNC7(errcode, 0);

	errcode = FUNC4(decoder, &offset);
	FUNC6(errcode, 0);
	FUNC9(offset, sync[2]);

	errcode = FUNC5(decoder, &ip);
	FUNC7(errcode, 0);

	errcode = FUNC4(decoder, &offset);
	FUNC6(errcode, 0);
	FUNC9(offset, sync[1]);

	errcode = FUNC5(decoder, &ip);
	FUNC6(errcode, -pte_eos);

	return FUNC8();
}