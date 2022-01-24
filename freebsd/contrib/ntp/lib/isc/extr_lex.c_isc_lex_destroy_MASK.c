#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int max_token; int /*<<< orphan*/  mctx; scalar_t__ magic; struct TYPE_6__* data; int /*<<< orphan*/  sources; } ;
typedef  TYPE_1__ isc_lex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void
FUNC6(isc_lex_t **lexp) {
	isc_lex_t *lex;

	/*
	 * Destroy the lexer.
	 */

	FUNC1(lexp != NULL);
	lex = *lexp;
	FUNC1(FUNC3(lex));

	while (!FUNC0(lex->sources))
		FUNC2(FUNC4(lex) == ISC_R_SUCCESS);
	if (lex->data != NULL)
		FUNC5(lex->mctx, lex->data, lex->max_token + 1);
	lex->magic = 0;
	FUNC5(lex->mctx, lex, sizeof(*lex));

	*lexp = NULL;
}