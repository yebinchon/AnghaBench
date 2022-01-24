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
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct ucl_parser {int dummy; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ucl_parser*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ucl_parser*) ; 
 char* FUNC8 (struct ucl_parser*) ; 
 int /*<<< orphan*/ * FUNC9 (struct ucl_parser*) ; 
 struct ucl_parser* FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11 (int argc, char **argv)
{
	char *buf = NULL;
	struct ucl_parser *parser;
	ucl_object_t *obj = NULL;
	const ucl_object_t *elt;
	ucl_object_iter_t iter = NULL;
	int ret = 0;

	if (FUNC3 (&buf) == -1) {
		FUNC0 (EXIT_FAILURE);
	}

	parser = FUNC10 (0);

	FUNC6 (parser, buf, 0);

	if (FUNC8 (parser) != NULL) {
		FUNC1 (stdout, "Error occurred: %s\n", FUNC8 (parser));
		ret = 1;
		return EXIT_FAILURE;
	}
	obj = FUNC9 (parser);
	FUNC7 (parser);

	while ((elt = FUNC4 (obj, &iter, true)) != NULL) {
		ret = FUNC2 (elt);
		if (ret != 0) {
			break;
		}
	}

	FUNC5 (obj);

	return ret;
}