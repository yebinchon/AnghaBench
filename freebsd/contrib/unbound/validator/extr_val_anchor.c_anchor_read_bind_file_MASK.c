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
struct val_anchors {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct val_anchors*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int
FUNC11(struct val_anchors* anchors, sldns_buffer* buffer,
	const char* fname)
{
	int line_nr = 1;
	FILE* in = FUNC1(fname, "r");
	int rdlen = 0;
	if(!in) {
		FUNC2("error opening file %s: %s", fname, FUNC8(errno));
		return 0;
	}
	FUNC10(VERB_QUERY, "reading in bind-compat-mode: '%s'", fname);
	/* scan for  trusted-keys  keyword, ignore everything else */
	FUNC7(buffer);
	while((rdlen=FUNC4(in, buffer, &line_nr, 1)) != 0) {
		if(rdlen != 12 || FUNC9((char*)FUNC6(buffer),
			"trusted-keys", 12) != 0) {
			FUNC7(buffer);
			/* ignore everything but trusted-keys */
			continue;
		}
		if(!FUNC5(in, buffer, &line_nr, '{')) {
			FUNC2("error in trusted key: \"%s\"", fname);
			FUNC0(in);
			return 0;
		}
		/* process contents */
		if(!FUNC3(anchors, buffer, &line_nr, in)) {
			FUNC2("error in trusted key: \"%s\"", fname);
			FUNC0(in);
			return 0;
		}
		if(!FUNC5(in, buffer, &line_nr, ';')) {
			FUNC2("error in trusted key: \"%s\"", fname);
			FUNC0(in);
			return 0;
		}
		FUNC7(buffer);
	}
	FUNC0(in);
	return 1;
}