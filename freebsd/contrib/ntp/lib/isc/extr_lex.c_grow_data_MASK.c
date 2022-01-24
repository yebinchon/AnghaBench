#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_3__ {int max_token; char* data; int /*<<< orphan*/  mctx; } ;
typedef  TYPE_1__ isc_lex_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static inline isc_result_t
FUNC3(isc_lex_t *lex, size_t *remainingp, char **currp, char **prevp) {
	char *new;

	new = FUNC0(lex->mctx, lex->max_token * 2 + 1);
	if (new == NULL)
		return (ISC_R_NOMEMORY);
	FUNC2(new, lex->data, lex->max_token + 1);
	*currp = new + (*currp - lex->data);
	if (*prevp != NULL)
		*prevp = new + (*prevp - lex->data);
	FUNC1(lex->mctx, lex->data, lex->max_token + 1);
	lex->data = new;
	*remainingp += lex->max_token;
	lex->max_token *= 2;
	return (ISC_R_SUCCESS);
}