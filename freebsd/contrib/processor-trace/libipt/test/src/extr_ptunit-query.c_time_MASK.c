#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_2__ {int have_tsc; int tsc; } ;
struct pt_query_decoder {TYPE_1__ last_time; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;

/* Variables and functions */
 int FUNC0 (struct pt_query_decoder*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	uint64_t tsc, exp;
	int errcode;

	exp = 0x11223344556677ull;

	decoder->last_time.have_tsc = 1;
	decoder->last_time.tsc = exp;

	errcode = FUNC0(decoder, &tsc, NULL, NULL);
	FUNC1(errcode, 0);
	FUNC3(tsc, exp);

	return FUNC2();
}