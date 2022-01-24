#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
struct TYPE_4__ {size_t max_token; int /*<<< orphan*/  magic; int /*<<< orphan*/  sources; int /*<<< orphan*/  specials; scalar_t__ saved_paren_count; scalar_t__ paren_count; void* last_was_eol; void* comment_ok; scalar_t__ comments; int /*<<< orphan*/ * mctx; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ isc_lex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 void* ISC_TRUE ; 
 int /*<<< orphan*/  LEX_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

isc_result_t
FUNC5(isc_mem_t *mctx, size_t max_token, isc_lex_t **lexp) {
	isc_lex_t *lex;

	/*
	 * Create a lexer.
	 */

	FUNC1(lexp != NULL && *lexp == NULL);
	FUNC1(max_token > 0U);

	lex = FUNC2(mctx, sizeof(*lex));
	if (lex == NULL)
		return (ISC_R_NOMEMORY);
	lex->data = FUNC2(mctx, max_token + 1);
	if (lex->data == NULL) {
		FUNC3(mctx, lex, sizeof(*lex));
		return (ISC_R_NOMEMORY);
	}
	lex->mctx = mctx;
	lex->max_token = max_token;
	lex->comments = 0;
	lex->comment_ok = ISC_TRUE;
	lex->last_was_eol = ISC_TRUE;
	lex->paren_count = 0;
	lex->saved_paren_count = 0;
	FUNC4(lex->specials, 0, 256);
	FUNC0(lex->sources);
	lex->magic = LEX_MAGIC;

	*lexp = lex;

	return (ISC_R_SUCCESS);
}