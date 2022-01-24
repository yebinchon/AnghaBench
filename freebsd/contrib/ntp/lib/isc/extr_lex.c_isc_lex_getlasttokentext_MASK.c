#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ type; } ;
typedef  TYPE_1__ isc_token_t ;
struct TYPE_12__ {unsigned char* base; scalar_t__ length; } ;
typedef  TYPE_2__ isc_region_t ;
struct TYPE_13__ {int /*<<< orphan*/  sources; } ;
typedef  TYPE_3__ isc_lex_t ;
struct TYPE_14__ {scalar_t__ ignored; int /*<<< orphan*/  pushback; } ;
typedef  TYPE_4__ inputsource ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ isc_tokentype_eof ; 

void
FUNC7(isc_lex_t *lex, isc_token_t *tokenp, isc_region_t *r)
{
	inputsource *source;

	FUNC2(FUNC4(lex));
	source = FUNC0(lex->sources);
	FUNC2(source != NULL);
	FUNC2(tokenp != NULL);
	FUNC2(FUNC6(source->pushback) != 0 ||
		tokenp->type == isc_tokentype_eof);

	FUNC3(tokenp);

	FUNC1(source->ignored <= FUNC6(source->pushback));
	r->base = (unsigned char *)FUNC5(source->pushback) +
		  source->ignored;
	r->length = FUNC6(source->pushback) -
		    source->ignored;
}