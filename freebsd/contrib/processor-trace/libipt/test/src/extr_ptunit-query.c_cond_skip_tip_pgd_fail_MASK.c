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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pt_ipc_sext_48 ; 
 int FUNC2 (struct pt_query_decoder*,int*) ; 
 int pte_bad_query ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pt_query_decoder*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 

__attribute__((used)) static struct ptunit_result
FUNC7(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	int errcode, tnt = 0xbc, taken = tnt;
	const uint8_t *pos;

	pos = encoder->pos;
	FUNC0(encoder, 0, pt_ipc_sext_48);
	FUNC1(encoder, 0, 1);

	FUNC3(ptu_sync_decoder, decoder);

	errcode = FUNC2(decoder, &taken);
	FUNC4(errcode, -pte_bad_query);
	FUNC6(decoder->pos, pos);
	FUNC4(taken, tnt);

	return FUNC5();
}