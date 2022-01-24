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
typedef  int /*<<< orphan*/  uint8_t ;
struct sldns_file_parse_state {int lineno; } ;
struct config_file {char* chrootdir; } ;
struct auth_zone {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_INCLUDE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_INCLUDE_DEPTH ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,size_t*,struct sldns_file_parse_state*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t,size_t) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC16(struct auth_zone* z, FILE* in, uint8_t* rr, size_t rrbuflen,
	struct sldns_file_parse_state* state, char* fname, int depth,
	struct config_file* cfg)
{
	size_t rr_len, dname_len;
	int status;
	state->lineno = 1;

	while(!FUNC3(in)) {
		rr_len = rrbuflen;
		dname_len = 0;
		status = FUNC7(in, rr, &rr_len, &dname_len,
			state);
		if(status == LDNS_WIREPARSE_ERR_INCLUDE && rr_len == 0) {
			/* we have $INCLUDE or $something */
			if(FUNC14((char*)rr, "$INCLUDE ", 9) == 0 ||
			   FUNC14((char*)rr, "$INCLUDE\t", 9) == 0) {
				FILE* inc;
				int lineno_orig = state->lineno;
				char* incfile = (char*)rr + 8;
				if(depth > MAX_INCLUDE_DEPTH) {
					FUNC6("%s:%d max include depth"
					  "exceeded", fname, state->lineno);
					return 0;
				}
				/* skip spaces */
				while(*incfile == ' ' || *incfile == '\t')
					incfile++;
				/* adjust for chroot on include file */
				if(cfg->chrootdir && cfg->chrootdir[0] &&
					FUNC14(incfile, cfg->chrootdir,
						FUNC13(cfg->chrootdir)) == 0)
					incfile += FUNC13(cfg->chrootdir);
				incfile = FUNC11(incfile);
				if(!incfile) {
					FUNC6("malloc failure");
					return 0;
				}
				FUNC15(VERB_ALGO, "opening $INCLUDE %s",
					incfile);
				inc = FUNC4(incfile, "r");
				if(!inc) {
					FUNC6("%s:%d cannot open include "
						"file %s: %s", fname,
						lineno_orig, incfile,
						FUNC12(errno));
					FUNC5(incfile);
					return 0;
				}
				/* recurse read that file now */
				if(!FUNC16(z, inc, rr, rrbuflen,
					state, incfile, depth+1, cfg)) {
					FUNC6("%s:%d cannot parse include "
						"file %s", fname,
						lineno_orig, incfile);
					FUNC2(inc);
					FUNC5(incfile);
					return 0;
				}
				FUNC2(inc);
				FUNC15(VERB_ALGO, "done with $INCLUDE %s",
					incfile);
				FUNC5(incfile);
				state->lineno = lineno_orig;
			}
			continue;
		}
		if(status != 0) {
			FUNC6("parse error %s %d:%d: %s", fname,
				state->lineno, FUNC0(status),
				FUNC8(status));
			return 0;
		}
		if(rr_len == 0) {
			/* EMPTY line, TTL or ORIGIN */
			continue;
		}
		/* insert wirerr in rrbuf */
		if(!FUNC1(z, rr, rr_len, dname_len, NULL)) {
			char buf[17];
			FUNC9(FUNC10(rr,
				rr_len, dname_len), buf, sizeof(buf));
			FUNC6("%s:%d cannot insert RR of type %s",
				fname, state->lineno, buf);
			return 0;
		}
	}
	return 1;
}