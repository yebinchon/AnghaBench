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
typedef  int /*<<< orphan*/ * ucl_macro_handler ;
struct ucl_parser {int /*<<< orphan*/  macroes; } ;
struct TYPE_2__ {int /*<<< orphan*/ * handler; } ;
struct ucl_macro {int /*<<< orphan*/  name; void* ud; TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucl_macro*) ; 
 struct ucl_macro* FUNC1 (int) ; 
 int /*<<< orphan*/  hh ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_macro*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5 (struct ucl_parser *parser, const char *macro,
		ucl_macro_handler handler, void* ud)
{
	struct ucl_macro *new;

	if (macro == NULL || handler == NULL) {
		return;
	}

	new = FUNC1 (sizeof (struct ucl_macro));
	if (new == NULL) {
		return;
	}

	FUNC2 (new, 0, sizeof (struct ucl_macro));
	new->h.handler = handler;
	new->name = FUNC3 (macro);
	new->ud = ud;
	FUNC0 (hh, parser->macroes, new->name, FUNC4 (new->name), new);
}