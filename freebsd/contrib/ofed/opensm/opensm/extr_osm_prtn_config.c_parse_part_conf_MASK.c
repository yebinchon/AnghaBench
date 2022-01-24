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
struct part_conf {int /*<<< orphan*/  p_log; scalar_t__ p_prtn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*,int,struct part_conf*) ; 
 int FUNC3 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC4 (int,struct part_conf*,char*,char*) ; 
 scalar_t__ FUNC5 (int,struct part_conf*,char*,char*) ; 
 scalar_t__ FUNC6 (int,struct part_conf*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static int FUNC9(struct part_conf *conf, char *str, int lineno)
{
	int ret, len = 0;
	char *name, *id, *flag, *flval;
	char *q, *p;

	p = str;
	if (*p == '\t' || *p == '\0' || *p == '\n')
		p++;

	len += (int)(p - str);
	str = p;

	if (conf->p_prtn)
		goto skip_header;

	q = FUNC7(p, ':');
	if (!q) {
		FUNC0(conf->p_log, OSM_LOG_ERROR, "PARSE ERROR: line %d: "
			"no partition definition found\n", lineno);
		FUNC1(stderr, "\nPARSE ERROR: line %d: "
			"no partition definition found\n", lineno);
		return -1;
	}

	*q++ = '\0';
	str = q;

	name = id = flag = flval = NULL;

	q = FUNC7(p, ',');
	if (q)
		*q = '\0';

	ret = FUNC3(p, &name, &id);
	p += ret;
	len += ret;

	while (q) {
		flag = flval = NULL;
		q = FUNC7(p, ',');
		if (q)
			*q++ = '\0';
		ret = FUNC3(p, &flag, &flval);
		if (!flag) {
			FUNC0(conf->p_log, OSM_LOG_ERROR,
				"PARSE ERROR: line %d: "
				"bad partition flags\n", lineno);
			FUNC1(stderr, "\nPARSE ERROR: line %d: "
				"bad partition flags\n", lineno);
			return -1;
		}
		p += ret;
		len += ret;
		FUNC4(lineno, conf, flag, flval);
	}

	if (p != str || (FUNC6(lineno, conf,
					  name, id, flag, flval) < 0)) {
		FUNC0(conf->p_log, OSM_LOG_ERROR, "PARSE ERROR: line %d: "
			"bad partition definition\n", lineno);
		FUNC1(stderr, "\nPARSE ERROR: line %d: "
			"bad partition definition\n", lineno);
		return -1;
	}

skip_header:
	do {
		name = flag = NULL;
		q = FUNC7(p, ',');
		if (q)
			*q++ = '\0';
		ret = FUNC3(p, &name, &flag);
		len += ret;

		if (FUNC8(name, "mgid") == 0) {
			/* parse an mgid line if specified. */
			len += FUNC2(p+ret, flag, lineno, conf);
			goto done; /* We're done: this consumes the line */
		}
		if (FUNC5(lineno, conf, name, flag) < 0) {
			FUNC0(conf->p_log, OSM_LOG_ERROR,
				"PARSE ERROR: line %d: "
				"bad PortGUID\n", lineno);
			FUNC1(stderr, "PARSE ERROR: line %d: "
				"bad PortGUID\n", lineno);
			return -1;
		}
		p += ret;
	} while (q);

done:
	return len;
}