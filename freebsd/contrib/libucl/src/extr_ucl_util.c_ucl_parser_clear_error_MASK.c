#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ucl_parser {scalar_t__ err_code; int /*<<< orphan*/ * err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct ucl_parser *parser)
{
	if (parser != NULL && parser->err != NULL) {
		FUNC0(parser->err);
		parser->err = NULL;
		parser->err_code = 0;
	}
}