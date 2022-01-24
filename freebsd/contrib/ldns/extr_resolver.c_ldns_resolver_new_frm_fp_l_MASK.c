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
typedef  int uint8_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int int8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  LDNS_MAX_LINELEN ; 
 int /*<<< orphan*/  LDNS_PARSE_NORMAL ; 
 int /*<<< orphan*/  LDNS_PARSE_SKIP_SPACE ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_AAAA ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_DNAME ; 
#define  LDNS_RESOLV_ANCHOR 134 
#define  LDNS_RESOLV_DEFDOMAIN 133 
#define  LDNS_RESOLV_KEYWORD 132 
 int LDNS_RESOLV_KEYWORDS ; 
#define  LDNS_RESOLV_NAMESERVER 131 
#define  LDNS_RESOLV_OPTIONS 130 
#define  LDNS_RESOLV_SEARCH 129 
#define  LDNS_RESOLV_SORTLIST 128 
 int /*<<< orphan*/  LDNS_STATUS_FILE_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_MEM_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_NULL ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  LDNS_STATUS_SYNTAX_DNAME_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_SYNTAX_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR ; 
 int b ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int FUNC5 (int,char*,int /*<<< orphan*/ ,size_t) ; 
 int ldns_buffer ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC21 (char*,char) ; 

ldns_status
FUNC22(ldns_resolver **res, FILE *fp, int *line_nr)
{
	ldns_resolver *r;
	const char *keyword[LDNS_RESOLV_KEYWORDS];
	char word[LDNS_MAX_LINELEN + 1];
	int8_t expect;
	uint8_t i;
	ldns_rdf *tmp;
#ifdef HAVE_SSL
	ldns_rr *tmp_rr;
#endif
	ssize_t gtr, bgtr;
	ldns_buffer *b;
        int lnr = 0, oldline;
	FILE* myfp = fp;
        if(!line_nr) line_nr = &lnr;

	if(!fp) {
		myfp = FUNC4("/etc/resolv.conf", "r");
		if(!myfp)
			return LDNS_STATUS_FILE_ERR;
	}

	/* do this better
	 * expect =
	 * 0: keyword
	 * 1: default domain dname
	 * 2: NS aaaa or a record
	 */

	/* recognized keywords */
	keyword[LDNS_RESOLV_NAMESERVER] = "nameserver";
	keyword[LDNS_RESOLV_DEFDOMAIN] = "domain";
	keyword[LDNS_RESOLV_SEARCH] = "search";
	/* these two are read but not used atm TODO */
	keyword[LDNS_RESOLV_SORTLIST] = "sortlist";
	keyword[LDNS_RESOLV_OPTIONS] = "options";
	keyword[LDNS_RESOLV_ANCHOR] = "anchor";
	expect = LDNS_RESOLV_KEYWORD;

	r = FUNC14();
	if (!r) {
		if(!fp) FUNC2(myfp);
		return LDNS_STATUS_MEM_ERR;
	}

	gtr = 1;
	word[0] = 0;
        oldline = *line_nr;
        expect = LDNS_RESOLV_KEYWORD;
	while (gtr > 0) {
		/* check comments */
		if (word[0] == '#') {
                        word[0]='x';
                        if(oldline == *line_nr) {
                                /* skip until end of line */
                                int c;
                                do {
                                        c = FUNC3(myfp);
                                } while(c != EOF && c != '\n');
                                if(c=='\n') (*line_nr)++;
                        }
			/* and read next to prepare for further parsing */
                        oldline = *line_nr;
			continue;
		}
                oldline = *line_nr;
		switch(expect) {
			case LDNS_RESOLV_KEYWORD:
				/* keyword */
				gtr = FUNC9(myfp, word, LDNS_PARSE_NORMAL, 0, line_nr);
				if (gtr != 0) {
                                        if(word[0] == '#') continue;
					for(i = 0; i < LDNS_RESOLV_KEYWORDS; i++) {
						if (FUNC20(keyword[i], word) == 0) {
							/* chosen the keyword and
							 * expect values carefully
	        					 */
							expect = i;
							break;
						}
					}
					/* no keyword recognized */
					if (expect == LDNS_RESOLV_KEYWORD) {
						/* skip line */
						/*
						ldns_resolver_deep_free(r);
						if(!fp) fclose(myfp);
						return LDNS_STATUS_SYNTAX_KEYWORD_ERR;
						*/
					}
				}
				break;
			case LDNS_RESOLV_DEFDOMAIN:
				/* default domain dname */
				gtr = FUNC9(myfp, word, LDNS_PARSE_NORMAL, 0, line_nr);
				if (gtr == 0) {
					if(!fp) FUNC2(myfp);
					return LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR;
				}
                                if(word[0] == '#') {
                                        expect = LDNS_RESOLV_KEYWORD;
                                        continue;
                                }
				tmp = FUNC11(LDNS_RDF_TYPE_DNAME, word);
				if (!tmp) {
					FUNC13(r);
					if(!fp) FUNC2(myfp);
					return LDNS_STATUS_SYNTAX_DNAME_ERR;
				}

				/* DOn't free, because we copy the pointer */
				FUNC18(r, tmp);
				expect = LDNS_RESOLV_KEYWORD;
				break;
			case LDNS_RESOLV_NAMESERVER:
				/* NS aaaa or a record */
				gtr = FUNC9(myfp, word, LDNS_PARSE_NORMAL, 0, line_nr);
				if (gtr == 0) {
					if(!fp) FUNC2(myfp);
					return LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR;
				}
                                if(word[0] == '#') {
                                        expect = LDNS_RESOLV_KEYWORD;
                                        continue;
                                }
                                if(FUNC21(word, '%')) {
                                        /* snip off interface labels,
                                         * fe80::222:19ff:fe31:4222%eth0 */
                                        FUNC21(word, '%')[0]=0;
                                }
				tmp = FUNC11(LDNS_RDF_TYPE_AAAA, word);
				if (!tmp) {
					/* try ip4 */
					tmp = FUNC11(LDNS_RDF_TYPE_A, word);
				}
				/* could not parse it, exit */
				if (!tmp) {
					FUNC13(r);
					if(!fp) FUNC2(myfp);
					return LDNS_STATUS_SYNTAX_ERR;
				}
				(void)FUNC16(r, tmp);
				FUNC10(tmp);
				expect = LDNS_RESOLV_KEYWORD;
				break;
			case LDNS_RESOLV_SEARCH:
				/* search list domain dname */
				gtr = FUNC9(myfp, word, LDNS_PARSE_SKIP_SPACE, 0, line_nr);
				b = FUNC1(ldns_buffer);
				if(!b) {
					FUNC13(r);
					if(!fp) FUNC2(myfp);
					return LDNS_STATUS_MEM_ERR;
				}

				FUNC7(b, word, (size_t) gtr);
				if(FUNC8(b) != LDNS_STATUS_OK) {
					FUNC0(b);
					FUNC13(r);
					if(!fp) FUNC2(myfp);
					return LDNS_STATUS_MEM_ERR;
				}
				bgtr = FUNC5(b, word, LDNS_PARSE_NORMAL, (size_t) gtr + 1);
				while (bgtr > 0) {
					gtr -= bgtr;
                                        if(word[0] == '#') {
                                                expect = LDNS_RESOLV_KEYWORD;
                                                break;
                                        }
					tmp = FUNC11(LDNS_RDF_TYPE_DNAME, word);
					if (!tmp) {
						FUNC13(r);
						FUNC6(b);
						if(!fp) FUNC2(myfp);
						return LDNS_STATUS_SYNTAX_DNAME_ERR;
					}

					FUNC17(r, tmp);

					FUNC10(tmp);
					bgtr = FUNC5(b, word, LDNS_PARSE_NORMAL,
					    (size_t) gtr + 1);
				}
				FUNC6(b);
				if (expect != LDNS_RESOLV_KEYWORD) {
					gtr = 1;
					expect = LDNS_RESOLV_KEYWORD;
				}
				break;
			case LDNS_RESOLV_SORTLIST:
				gtr = FUNC9(myfp, word, LDNS_PARSE_SKIP_SPACE, 0, line_nr);
				/* sortlist not implemented atm */
				expect = LDNS_RESOLV_KEYWORD;
				break;
			case LDNS_RESOLV_OPTIONS:
				gtr = FUNC9(myfp, word, LDNS_PARSE_SKIP_SPACE, 0, line_nr);
				/* options not implemented atm */
				expect = LDNS_RESOLV_KEYWORD;
				break;
			case LDNS_RESOLV_ANCHOR:
				/* a file containing a DNSSEC trust anchor */
				gtr = FUNC9(myfp, word, LDNS_PARSE_NORMAL, 0, line_nr);
				if (gtr == 0) {
					FUNC13(r);
					if(!fp) FUNC2(myfp);
					return LDNS_STATUS_SYNTAX_MISSING_VALUE_ERR;
				}
                                if(word[0] == '#') {
                                        expect = LDNS_RESOLV_KEYWORD;
                                        continue;
                                }

#ifdef HAVE_SSL
				tmp_rr = ldns_read_anchor_file(word);
				(void) ldns_resolver_push_dnssec_anchor(r, tmp_rr);
				ldns_rr_free(tmp_rr);
#endif
				expect = LDNS_RESOLV_KEYWORD;
				break;
		}
	}

	if(!fp)
		FUNC2(myfp);

	if (res) {
		*res = r;
		return LDNS_STATUS_OK;
	} else {
		FUNC13(r);
		return LDNS_STATUS_NULL;
	}
}