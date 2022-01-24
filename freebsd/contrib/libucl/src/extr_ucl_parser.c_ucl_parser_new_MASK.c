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
struct ucl_parser {int flags; int /*<<< orphan*/  comments; int /*<<< orphan*/ * includepaths; } ;

/* Variables and functions */
 struct ucl_parser* FUNC0 (int) ; 
 int /*<<< orphan*/  UCL_OBJECT ; 
 int UCL_PARSER_NO_FILEVARS ; 
 int UCL_PARSER_SAVE_COMMENTS ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_parser*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ucl_include_handler ; 
 int /*<<< orphan*/  ucl_includes_handler ; 
 int /*<<< orphan*/  ucl_inherit_handler ; 
 int /*<<< orphan*/  ucl_load_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ucl_parser*,char*,int /*<<< orphan*/ ,struct ucl_parser*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucl_parser*,char*,int /*<<< orphan*/ ,struct ucl_parser*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucl_parser*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ucl_priority_handler ; 
 int /*<<< orphan*/  ucl_try_include_handler ; 

struct ucl_parser*
FUNC6 (int flags)
{
	struct ucl_parser *parser;

	parser = FUNC0 (sizeof (struct ucl_parser));
	if (parser == NULL) {
		return NULL;
	}

	FUNC1 (parser, 0, sizeof (struct ucl_parser));

	FUNC4 (parser, "include", ucl_include_handler, parser);
	FUNC4 (parser, "try_include", ucl_try_include_handler, parser);
	FUNC4 (parser, "includes", ucl_includes_handler, parser);
	FUNC4 (parser, "priority", ucl_priority_handler, parser);
	FUNC4 (parser, "load", ucl_load_handler, parser);
	FUNC3 (parser, "inherit", ucl_inherit_handler, parser);

	parser->flags = flags;
	parser->includepaths = NULL;

	if (flags & UCL_PARSER_SAVE_COMMENTS) {
		parser->comments = FUNC2 (UCL_OBJECT);
	}

	if (!(flags & UCL_PARSER_NO_FILEVARS)) {
		/* Initial assumption about filevars */
		FUNC5 (parser, NULL, false);
	}

	return parser;
}