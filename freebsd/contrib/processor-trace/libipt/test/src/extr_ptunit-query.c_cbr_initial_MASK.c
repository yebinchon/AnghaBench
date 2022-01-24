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
typedef  int /*<<< orphan*/  uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;

/* Variables and functions */
 int FUNC0 (struct pt_query_decoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_no_cbr ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	uint32_t cbr;
	int errcode;

	errcode = FUNC0(decoder, &cbr);
	FUNC1(errcode, -pte_no_cbr);

	return FUNC2();
}