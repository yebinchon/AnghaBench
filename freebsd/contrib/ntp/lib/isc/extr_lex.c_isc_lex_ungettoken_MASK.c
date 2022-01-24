#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_1__ isc_token_t ;
struct TYPE_10__ {int /*<<< orphan*/  saved_paren_count; int /*<<< orphan*/  paren_count; int /*<<< orphan*/  sources; } ;
typedef  TYPE_2__ isc_lex_t ;
struct TYPE_11__ {int /*<<< orphan*/  at_eof; int /*<<< orphan*/  saved_line; int /*<<< orphan*/  line; int /*<<< orphan*/  pushback; } ;
typedef  TYPE_3__ inputsource ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ isc_tokentype_eof ; 

void
FUNC6(isc_lex_t *lex, isc_token_t *tokenp) {
	inputsource *source;
	/*
	 * Unget the current token.
	 */

	FUNC1(FUNC3(lex));
	source = FUNC0(lex->sources);
	FUNC1(source != NULL);
	FUNC1(tokenp != NULL);
	FUNC1(FUNC4(source->pushback) != 0 ||
		tokenp->type == isc_tokentype_eof);

	FUNC2(tokenp);

	FUNC5(source->pushback);
	lex->paren_count = lex->saved_paren_count;
	source->line = source->saved_line;
	source->at_eof = ISC_FALSE;
}