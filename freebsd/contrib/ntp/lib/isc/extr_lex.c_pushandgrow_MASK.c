#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_uint8_t ;
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_region_t ;
struct TYPE_13__ {int /*<<< orphan*/  mctx; } ;
typedef  TYPE_1__ isc_lex_t ;
struct TYPE_14__ {int /*<<< orphan*/  current; } ;
typedef  TYPE_2__ isc_buffer_t ;
struct TYPE_15__ {TYPE_2__* pushback; } ;
typedef  TYPE_3__ inputsource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ISC_R_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__**,unsigned int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 unsigned int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static isc_result_t
FUNC8(isc_lex_t *lex, inputsource *source, int c) {
	if (FUNC2(source->pushback) == 0) {
		isc_buffer_t *tbuf = NULL;
		unsigned int oldlen;
		isc_region_t used;
		isc_result_t result;

		oldlen = FUNC5(source->pushback);
		result = FUNC1(lex->mctx, &tbuf, oldlen * 2);
		if (result != ISC_R_SUCCESS)
			return (result);
		FUNC7(source->pushback, &used);
		result = FUNC3(tbuf, &used);
		FUNC0(result == ISC_R_SUCCESS);
		tbuf->current = source->pushback->current;
		FUNC4(&source->pushback);
		source->pushback = tbuf;
	}
	FUNC6(source->pushback, (isc_uint8_t)c);
	return (ISC_R_SUCCESS);
}