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
struct TYPE_6__ {int /*<<< orphan*/  sources; } ;
typedef  TYPE_1__ isc_lex_t ;
struct TYPE_7__ {unsigned long line; } ;
typedef  TYPE_2__ inputsource ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

unsigned long
FUNC3(isc_lex_t *lex) {
	inputsource *source;

	FUNC1(FUNC2(lex));
	source = FUNC0(lex->sources);

	if (source == NULL)
		return (0);

	return (source->line);
}