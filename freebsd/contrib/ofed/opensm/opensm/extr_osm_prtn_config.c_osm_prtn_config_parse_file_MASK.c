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
struct part_conf {int dummy; } ;
typedef  int /*<<< orphan*/  osm_subn_t ;
typedef  int /*<<< orphan*/  osm_log_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  OSM_LOG_VERBOSE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct part_conf*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct part_conf* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct part_conf*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(osm_log_t * p_log, osm_subn_t * p_subn,
			       const char *file_name)
{
	char line[4096];
	struct part_conf *conf = NULL;
	FILE *file;
	int lineno;
	int is_parse_success;

	line[0] = '\0';
	file = FUNC4(file_name, "r");
	if (!file) {
		FUNC0(p_log, OSM_LOG_VERBOSE,
			"Cannot open config file \'%s\': %s\n",
			file_name, FUNC9(errno));
		return -1;
	}

	lineno = 0;

	is_parse_success = 0;

	while (FUNC2(line, sizeof(line) - 1, file) != NULL) {
		char *q, *p = line;

		lineno++;

		p = line;

		q = FUNC8(p, '#');
		if (q)
			*q = '\0';

		do {
			int len;
			while (*p == ' ' || *p == '\t' || *p == '\n')
				p++;
			if (*p == '\0')
				break;

			if (!conf && !(conf = FUNC6(p_log, p_subn))) {
				FUNC0(p_log, OSM_LOG_ERROR,
					"PARSE ERROR: line %d: "
					"internal: cannot create config\n",
					lineno);
				FUNC5(stderr,
					"PARSE ERROR: line %d: "
					"internal: cannot create config\n",
					lineno);
				is_parse_success = -1;
				break;
			}

			q = FUNC8(p, ';');
			if (q)
				*q = '\0';

			len = FUNC7(conf, p, lineno);
			if (len < 0) {
				is_parse_success = -1;
				break;
			}

			is_parse_success = 1;

			p += len;

			if (q) {
				FUNC3(conf);
				conf = NULL;
			}
		} while (q);

		if (is_parse_success == -1)
			break;
	}

	FUNC1(file);

	return (is_parse_success == 1) ? 0 : 1;
}