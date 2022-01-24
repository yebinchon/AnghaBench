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
struct ucl_parser {int /*<<< orphan*/  cur_file; int /*<<< orphan*/  err; } ;
typedef  enum ucl_parse_type { ____Placeholder_ucl_parse_type } ucl_parse_type ;
typedef  enum ucl_duplicate_strategy { ____Placeholder_ucl_duplicate_strategy } ucl_duplicate_strategy ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char**,size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t) ; 
 int FUNC6 (struct ucl_parser*,unsigned char*,size_t,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ucl_parser*,char*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 

bool
FUNC9 (struct ucl_parser *parser, const char *filename,
		unsigned priority, enum ucl_duplicate_strategy strat,
		enum ucl_parse_type parse_type)
{
	unsigned char *buf;
	size_t len;
	bool ret;
	char realbuf[PATH_MAX];

	if (FUNC8 (filename, realbuf) == NULL) {
		FUNC3 (&parser->err, "cannot open file %s: %s",
				filename,
				FUNC2 (errno));
		return false;
	}

	if (!FUNC4 (realbuf, &buf, &len, &parser->err, true)) {
		return false;
	}

	if (parser->cur_file) {
		FUNC0 (parser->cur_file);
	}
	parser->cur_file = FUNC1 (realbuf);
	FUNC7 (parser, realbuf, false);
	ret = FUNC6 (parser, buf, len, priority, strat,
			parse_type);

	if (len > 0) {
		FUNC5 (buf, len);
	}

	return ret;
}