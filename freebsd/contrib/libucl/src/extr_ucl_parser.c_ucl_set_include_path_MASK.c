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
struct ucl_parser {int /*<<< orphan*/ * includepaths; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool
FUNC2 (struct ucl_parser *parser, ucl_object_t *paths)
{
	if (parser == NULL || paths == NULL) {
		return false;
	}

	if (parser->includepaths == NULL) {
		parser->includepaths = FUNC0 (paths);
	}
	else {
		FUNC1 (parser->includepaths);
		parser->includepaths = FUNC0 (paths);
	}

	if (parser->includepaths == NULL) {
		return false;
	}

	return true;
}