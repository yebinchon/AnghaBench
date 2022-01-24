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
 int /*<<< orphan*/  cutoff ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pt_query_decoder*,int*) ; 
 int /*<<< orphan*/  pts_eos ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pt_query_decoder*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  ptu_sync_decoder ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	int errcode, taken;

	FUNC1(encoder, 0, 1);
	FUNC0(encoder, 0xfff);

	FUNC3(cutoff, decoder, encoder);
	FUNC3(ptu_sync_decoder, decoder);

	errcode = FUNC2(decoder, &taken);
	FUNC4(errcode, pts_eos);

	return FUNC5();
}