#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_6__ {int /*<<< orphan*/  mctx; int /*<<< orphan*/  sources; } ;
typedef  TYPE_1__ isc_lex_t ;
struct TYPE_7__ {char* name; } ;
typedef  TYPE_2__ inputsource ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_NOTFOUND ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 

isc_result_t
FUNC5(isc_lex_t *lex, const char *name) {
	inputsource *source;
	char *newname;

	FUNC1(FUNC2(lex));
	source = FUNC0(lex->sources);

	if (source == NULL)
		return(ISC_R_NOTFOUND);
	newname = FUNC4(lex->mctx, name);
	if (newname == NULL)
		return (ISC_R_NOMEMORY);
	FUNC3(lex->mctx, source->name);
	source->name = newname;
	return (ISC_R_SUCCESS);
}