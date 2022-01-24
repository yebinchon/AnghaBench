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
typedef  int /*<<< orphan*/  ucl_object_t ;
struct ucl_parser {int /*<<< orphan*/ * last_comment; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct ucl_parser *parser, const char *begin, size_t len)
{
	ucl_object_t *nobj;

	if (len > 0 && begin != NULL) {
		nobj = FUNC1 (begin, len, 0);

		if (parser->last_comment) {
			/* We need to append data to an existing object */
			FUNC0 (parser->last_comment, nobj);
		}
		else {
			parser->last_comment = nobj;
		}
	}
}