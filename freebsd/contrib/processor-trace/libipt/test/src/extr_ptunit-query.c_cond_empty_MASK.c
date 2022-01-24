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
struct pt_config {int /*<<< orphan*/  end; } ;
struct pt_query_decoder {int /*<<< orphan*/  pos; struct pt_config config; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;

/* Variables and functions */
 int FUNC0 (struct pt_query_decoder*,int*) ; 
 int pte_eos ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_config *config = &decoder->config;
	int errcode, tnt = 0xbc, taken = tnt;

	decoder->pos = config->end;

	errcode = FUNC0(decoder, &taken);
	FUNC1(errcode, -pte_eos);
	FUNC1(taken, tnt);

	return FUNC2();
}