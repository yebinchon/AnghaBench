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
struct torus {unsigned int* port_order; int flags; TYPE_1__* osm; int /*<<< orphan*/  max_changes; int /*<<< orphan*/  seed_cnt; int /*<<< orphan*/  portgrp_sz; } ;
struct fabric {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  DEFAULT_MAX_CHANGES ; 
 int NOTIFY_CHANGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  PORTGRP_MAX_PORTS ; 
 int X_MESH ; 
 int Y_MESH ; 
 int Z_MESH ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct torus*,int) ; 
 int FUNC7 (int,struct torus*,char const*) ; 
 int FUNC8 (int,struct torus*,char const*) ; 
 int FUNC9 (struct torus*,char const*) ; 
 int FUNC10 (struct torus*,char const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*,char const*) ; 

__attribute__((used)) static
bool FUNC15(const char *fn, struct fabric *f, struct torus *t)
{
	FILE *fp;
	unsigned i;
	char *keyword;
	char *line_buf = NULL;
	const char *parse_sep = " \n\t\015";
	size_t line_buf_sz = 0;
	size_t line_cntr = 0;
	ssize_t llen;
	bool kw_success, success = true;

	if (!FUNC6(t, 2))
		return false;

	for (i = 0; i < FUNC0(t->port_order); i++)
		t->port_order[i] = i;

	fp = FUNC3(fn, "r");
	if (!fp) {
		FUNC1(&t->osm->log, OSM_LOG_ERROR,
			"ERR 4E11: Opening %s: %s\n", fn, FUNC13(errno));
		return false;
	}
	t->flags |= NOTIFY_CHANGES;
	t->portgrp_sz = PORTGRP_MAX_PORTS;
	t->max_changes = DEFAULT_MAX_CHANGES;

next_line:
	llen = FUNC5(&line_buf, &line_buf_sz, fp);
	if (llen < 0)
		goto out;

	++line_cntr;

	keyword = FUNC14(line_buf, parse_sep);
	if (!keyword)
		goto next_line;

	if (FUNC12("torus", keyword) == 0) {
		kw_success = FUNC10(t, parse_sep);
	} else if (FUNC12("mesh", keyword) == 0) {
		t->flags |= X_MESH | Y_MESH | Z_MESH;
		kw_success = FUNC10(t, parse_sep);
	} else if (FUNC12("port_order", keyword) == 0) {
		kw_success = FUNC9(t, parse_sep);
	} else if (FUNC12("next_seed", keyword) == 0) {
		kw_success = FUNC6(t, 1);
		t->seed_cnt++;
	} else if (FUNC12("portgroup_max_ports", keyword) == 0) {
		kw_success = FUNC11(&t->portgrp_sz, parse_sep);
	} else if (FUNC12("xp_link", keyword) == 0) {
		if (!t->seed_cnt)
			t->seed_cnt++;
		kw_success = FUNC8(1, t, parse_sep);
	} else if (FUNC12("xm_link", keyword) == 0) {
		if (!t->seed_cnt)
			t->seed_cnt++;
		kw_success = FUNC8(-1, t, parse_sep);
	} else if (FUNC12("x_dateline", keyword) == 0) {
		if (!t->seed_cnt)
			t->seed_cnt++;
		kw_success = FUNC7(1, t, parse_sep);
	} else if (FUNC12("yp_link", keyword) == 0) {
		if (!t->seed_cnt)
			t->seed_cnt++;
		kw_success = FUNC8(2, t, parse_sep);
	} else if (FUNC12("ym_link", keyword) == 0) {
		if (!t->seed_cnt)
			t->seed_cnt++;
		kw_success = FUNC8(-2, t, parse_sep);
	} else if (FUNC12("y_dateline", keyword) == 0) {
		if (!t->seed_cnt)
			t->seed_cnt++;
		kw_success = FUNC7(2, t, parse_sep);
	} else if (FUNC12("zp_link", keyword) == 0) {
		if (!t->seed_cnt)
			t->seed_cnt++;
		kw_success = FUNC8(3, t, parse_sep);
	} else if (FUNC12("zm_link", keyword) == 0) {
		if (!t->seed_cnt)
			t->seed_cnt++;
		kw_success = FUNC8(-3, t, parse_sep);
	} else if (FUNC12("z_dateline", keyword) == 0) {
		if (!t->seed_cnt)
			t->seed_cnt++;
		kw_success = FUNC7(3, t, parse_sep);
	} else if (FUNC12("max_changes", keyword) == 0) {
		kw_success = FUNC11(&t->max_changes, parse_sep);
	} else if (keyword[0] == '#')
		goto next_line;
	else {
		FUNC1(&t->osm->log, OSM_LOG_ERROR,
			"ERR 4E12: no keyword found: line %u\n",
			(unsigned)line_cntr);
		kw_success = false;
	}
	if (!kw_success) {
		FUNC1(&t->osm->log, OSM_LOG_ERROR,
			"ERR 4E13: parsing '%s': line %u\n",
			keyword, (unsigned)line_cntr);
	}
	success = success && kw_success;
	goto next_line;

out:
	if (line_buf)
		FUNC4(line_buf);
	FUNC2(fp);
	return success;
}