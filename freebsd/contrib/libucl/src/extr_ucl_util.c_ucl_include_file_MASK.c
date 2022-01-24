#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ucl_parser {int /*<<< orphan*/  err; } ;
struct ucl_include_params {scalar_t__ must_exist; scalar_t__ soft_fail; int /*<<< orphan*/  allow_glob; } ;
typedef  int /*<<< orphan*/  globbuf ;
struct TYPE_5__ {size_t gl_pathc; scalar_t__* gl_pathv; } ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  glob_pattern ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC5 (unsigned char const*,size_t,struct ucl_parser*,struct ucl_include_params*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 

__attribute__((used)) static bool
FUNC7 (const unsigned char *data, size_t len,
		struct ucl_parser *parser, struct ucl_include_params *params)
{
	const unsigned char *p = data, *end = data + len;
	bool need_glob = false;
	int cnt = 0;
	char glob_pattern[PATH_MAX];
	size_t i;

#ifndef _WIN32
	if (!params->allow_glob) {
		return FUNC5 (data, len, parser, params);
	}
	else {
		/* Check for special symbols in a filename */
		while (p != end) {
			if (*p == '*' || *p == '?') {
				need_glob = true;
				break;
			}
			p ++;
		}
		if (need_glob) {
			glob_t globbuf;
			FUNC2 (&globbuf, 0, sizeof (globbuf));
			FUNC6 (glob_pattern, (const char *)data,
				(len + 1 < sizeof (glob_pattern) ? len + 1 : sizeof (glob_pattern)));
			if (FUNC0 (glob_pattern, 0, NULL, &globbuf) != 0) {
				return (!params->must_exist || false);
			}
			for (i = 0; i < globbuf.gl_pathc; i ++) {
				if (!FUNC5 ((unsigned char *)globbuf.gl_pathv[i],
						FUNC3 (globbuf.gl_pathv[i]), parser, params)) {
					if (params->soft_fail) {
						continue;
					}
					FUNC1 (&globbuf);
					return false;
				}
				cnt ++;
			}
			FUNC1 (&globbuf);

			if (cnt == 0 && params->must_exist) {
				FUNC4 (&parser->err, "cannot match any files for pattern %s",
					glob_pattern);
				return false;
			}
		}
		else {
			return FUNC5 (data, len, parser, params);
		}
	}
#else
	/* Win32 compilers do not support globbing. Therefore, for Win32,
	   treat allow_glob/need_glob as a NOOP and just return */
	return ucl_include_file_single (data, len, parser, params);
#endif

	return true;
}