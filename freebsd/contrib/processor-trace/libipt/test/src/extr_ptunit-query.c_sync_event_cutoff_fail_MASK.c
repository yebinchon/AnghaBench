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
 int /*<<< orphan*/  cutoff ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*) ; 
 int FUNC2 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_eos ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pt_query_decoder*,struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 

__attribute__((used)) static struct ptunit_result
FUNC6(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;
	uint64_t addr;
	int errcode;

	FUNC0(encoder);
	FUNC1(encoder);

	FUNC3(cutoff, decoder, encoder);

	errcode = FUNC2(decoder, &addr);
	FUNC4(errcode, -pte_eos);

	return FUNC5();
}