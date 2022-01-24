#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char jsmntok_t ;
struct TYPE_4__ {int /*<<< orphan*/  toknext; } ;
typedef  TYPE_1__ jsmn_parser ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 int JSMN_ERROR_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char*,size_t,char*,size_t) ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

int FUNC8() {
	int r;
	int eof_expected = 0;
	char *js = NULL;
	size_t jslen = 0;
	char buf[BUFSIZ];

	jsmn_parser p;
	jsmntok_t *tok;
	size_t tokcount = 2;

	/* Prepare parser */
	FUNC3(&p);

	/* Allocate some tokens as a start */
	tok = FUNC5(sizeof(*tok) * tokcount);
	if (tok == NULL) {
		FUNC1(stderr, "malloc(): errno=%d\n", errno);
		return 3;
	}

	for (;;) {
		/* Read another chunk */
		r = FUNC2(buf, 1, sizeof(buf), stdin);
		if (r < 0) {
			FUNC1(stderr, "fread(): %d, errno=%d\n", r, errno);
			return 1;
		}
		if (r == 0) {
			if (eof_expected != 0) {
				return 0;
			} else {
				FUNC1(stderr, "fread(): unexpected EOF\n");
				return 2;
			}
		}

		js = FUNC6(js, jslen + r + 1);
		if (js == NULL) {
			FUNC1(stderr, "realloc(): errno=%d\n", errno);
			return 3;
		}
		FUNC7(js + jslen, buf, r);
		jslen = jslen + r;

again:
		r = FUNC4(&p, js, jslen, tok, tokcount);
		if (r < 0) {
			if (r == JSMN_ERROR_NOMEM) {
				tokcount = tokcount * 2;
				tok = FUNC6(tok, sizeof(*tok) * tokcount);
				if (tok == NULL) {
					FUNC1(stderr, "realloc(): errno=%d\n", errno);
					return 3;
				}
				goto again;
			}
		} else {
			FUNC0(js, tok, p.toknext, 0);
			eof_expected = 1;
		}
	}

	return 0;
}