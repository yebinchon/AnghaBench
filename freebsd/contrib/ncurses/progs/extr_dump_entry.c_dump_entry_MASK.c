#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  term_names; void** Strings; } ;
typedef  TYPE_1__ TERMTYPE ;
typedef  int /*<<< orphan*/  PredFunc ;

/* Variables and functions */
 void* ABSENT_STRING ; 
 char* FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int FUNC1 () ; 
 scalar_t__ F_TCONVERR ; 
 scalar_t__ F_TERMCAP ; 
 int MAX_TERMCAP_LENGTH ; 
 int MAX_TERMINFO_LENGTH ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned int STRCOUNT ; 
 int /*<<< orphan*/  STRING ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int TRUE ; 
 scalar_t__ FUNC5 (void*) ; 
 int V_BSD ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 void* acs_chars ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int) ; 
 scalar_t__ outform ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 void* save_sgr ; 
 void* set_attributes ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  strnames ; 
 int tversion ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(TERMTYPE *tterm,
	   int suppress_untranslatable,
	   int limited,
	   int numbers,
	   PredFunc pred)
{
    TERMTYPE save_tterm;
    int len, critlen;
    const char *legend;
    bool infodump;

    if (outform == F_TERMCAP || outform == F_TCONVERR) {
	critlen = MAX_TERMCAP_LENGTH;
	legend = "older termcap";
	infodump = FALSE;
	FUNC11(tterm);
    } else {
	critlen = MAX_TERMINFO_LENGTH;
	legend = "terminfo";
	infodump = TRUE;
    }

    save_sgr = set_attributes;

    if ((FUNC1() > critlen)
	&& limited) {

	save_tterm = *tterm;
	if (!suppress_untranslatable) {
	    FUNC3("# (untranslatable capabilities removed to fit entry within %d bytes)\n",
		     critlen);
	    suppress_untranslatable = TRUE;
	}
	if (FUNC1() > critlen) {
	    /*
	     * We pick on sgr because it's a nice long string capability that
	     * is really just an optimization hack.  Another good candidate is
	     * acsc since it is both long and unused by BSD termcap.
	     */
	    bool changed = FALSE;

#if NCURSES_XNAMES
	    /*
	     * Extended names are most likely function-key definitions.  Drop
	     * those first.
	     */
	    unsigned n;
	    for (n = STRCOUNT; n < NUM_STRINGS(tterm); n++) {
		const char *name = ExtStrname(tterm, (int) n, strnames);

		if (VALID_STRING(tterm->Strings[n])) {
		    set_attributes = ABSENT_STRING;
		    /* we remove long names anyway - only report the short */
		    if (strlen(name) <= 2) {
			SHOW_WHY("# (%s removed to fit entry within %d bytes)\n",
				 name,
				 critlen);
		    }
		    changed = TRUE;
		    if (FMT_ENTRY() <= critlen)
			break;
		}
	    }
#endif
	    if (FUNC5(set_attributes)) {
		set_attributes = ABSENT_STRING;
		FUNC3("# (sgr removed to fit entry within %d bytes)\n",
			 critlen);
		changed = TRUE;
	    }
	    if (!changed || (FUNC1() > critlen)) {
		if (FUNC10(tterm)) {
		    acs_chars = ABSENT_STRING;
		    FUNC3("# (acsc removed to fit entry within %d bytes)\n",
			     critlen);
		    changed = TRUE;
		}
	    }
	    if (!changed || (FUNC1() > critlen)) {
		int oldversion = tversion;

		tversion = V_BSD;
		FUNC3("# (terminfo-only capabilities suppressed to fit entry within %d bytes)\n",
			 critlen);

		len = FUNC1();
		if (len > critlen
		    && FUNC9(tterm, len - critlen)) {
		    FUNC3("# (some labels capabilities suppressed to fit entry within %d bytes)\n",
			     critlen);
		    len = FUNC1();
		}
		if (len > critlen
		    && FUNC8(tterm, len - critlen)) {
		    FUNC3("# (some function-key capabilities suppressed to fit entry within %d bytes)\n",
			     critlen);
		    len = FUNC1();
		}
		if (len > critlen) {
		    (void) FUNC7(stderr,
				   "warning: %s entry is %d bytes long\n",
				   FUNC6(tterm->term_names),
				   len);
		    FUNC3("# WARNING: this entry, %d bytes long, may core-dump %s libraries!\n",
			     len, legend);
		}
		tversion = oldversion;
	    }
	    set_attributes = save_sgr;
	    *tterm = save_tterm;
	}
    } else if (!FUNC13(STRING, FUNC4(acs_chars))) {
	save_tterm = *tterm;
	if (FUNC10(tterm)) {
	    (void) FUNC1();
	}
	*tterm = save_tterm;
    }
}