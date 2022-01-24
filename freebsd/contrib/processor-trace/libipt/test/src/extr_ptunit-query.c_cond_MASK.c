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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int,int) ; 
 int FUNC1 (struct pt_query_decoder*,int*) ; 
 int pte_eos ; 
 int pts_eos ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	int errcode, tnt = 0xbc, taken = tnt;

	FUNC0(encoder, 0x02, 3);

	FUNC2(ptu_sync_decoder, decoder);

	errcode = FUNC1(decoder, &taken);
	FUNC3(errcode, 0);
	FUNC3(taken, 0);

	taken = tnt;
	errcode = FUNC1(decoder, &taken);
	FUNC3(errcode, 0);
	FUNC3(taken, 1);

	taken = tnt;
	errcode = FUNC1(decoder, &taken);
	FUNC3(errcode, pts_eos);
	FUNC3(taken, 0);

	taken = tnt;
	errcode = FUNC1(decoder, &taken);
	FUNC3(errcode, -pte_eos);
	FUNC3(taken, tnt);

	return FUNC4();
}