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
struct wordent {struct wordent* next; struct wordent* prev; void* word; } ;
struct whyle {struct whyle* w_next; } ;
struct Strbuf {char* s; size_t len; } ;
struct Ain {scalar_t__ a_seek; scalar_t__ f_seek; scalar_t__ type; } ;
typedef  struct Strbuf Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,struct Strbuf*) ; 
 void* STRNULL ; 
 struct Strbuf* STRdefault ; 
 struct Strbuf* STRthen ; 
 struct Strbuf* Sgoal ; 
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC2 (struct wordent*) ; 
 int /*<<< orphan*/  FUNC3 (struct Strbuf*) ; 
 scalar_t__ FUNC4 (char*) ; 
 void* FUNC5 (char*) ; 
 int Stype ; 
 scalar_t__ TCSH_F_SEEK ; 
 int TC_BREAK ; 
 int TC_BRKSW ; 
#define  TC_CASE 138 
#define  TC_DEFAULT 137 
#define  TC_ELSE 136 
#define  TC_END 135 
#define  TC_ENDIF 134 
#define  TC_ENDSW 133 
#define  TC_FOREACH 132 
 int TC_GOTO ; 
#define  TC_IF 131 
#define  TC_LABEL 130 
#define  TC_SWITCH 129 
#define  TC_WHILE 128 
 scalar_t__ aret ; 
 int /*<<< orphan*/  FUNC6 (struct Ain*) ; 
 int /*<<< orphan*/  FUNC7 (struct Strbuf*,int /*<<< orphan*/  (*) (struct wordent*)) ; 
 int /*<<< orphan*/  FUNC8 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct Strbuf*) ; 
 scalar_t__ feobp ; 
 int /*<<< orphan*/  FUNC10 (struct wordent*) ; 
 scalar_t__ fseekp ; 
 int /*<<< orphan*/  FUNC11 (struct Strbuf*) ; 
 struct wordent* FUNC12 (struct wordent*) ; 
 scalar_t__ intty ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct wordent*,int /*<<< orphan*/ ) ; 
 int FUNC16 (char*) ; 
 struct Strbuf* FUNC17 (int /*<<< orphan*/ ) ; 
 struct whyle* whyles ; 
 int /*<<< orphan*/  FUNC18 (struct whyle*) ; 
 int /*<<< orphan*/  FUNC19 (struct wordent*) ; 
 void* FUNC20 (int) ; 
 int zlast ; 

__attribute__((used)) static void
FUNC21(int type, int level, Char *goal)
{
    struct Strbuf word = Strbuf_INIT;
    Char *cp;
    struct whyle *wp;
    int wlevel = 0;
    struct wordent *histent = NULL, *ohistent = NULL;

    Stype = type;
    Sgoal = goal;
    if (type == TC_GOTO) {
	struct Ain a;
	a.type = TCSH_F_SEEK;
	a.f_seek = 0;
	a.a_seek = 0;
	FUNC6(&a);
    }
    FUNC7(&word, Strbuf_cleanup);
    do {
	    
	if (intty) {
	    histent = FUNC20(sizeof(*histent));
	    ohistent = FUNC20(sizeof(*histent));
	    ohistent->word = STRNULL;
	    ohistent->next = histent;
	    histent->prev = ohistent;
	}

	if (intty && fseekp == feobp && aret == TCSH_F_SEEK)
	    FUNC14(1, FUNC13(type == TC_BREAK ? zlast : type));
	/* xprintf("? "), flush(); */
	(void) FUNC11(&word);
	FUNC3(&word);

	if (intty && FUNC4(word.s) > 0) {
	    histent->word = FUNC5(word.s);
	    histent->next = FUNC20(sizeof(*histent));
	    histent->next->prev = histent;
	    histent = histent->next;
	}

	switch (FUNC16(word.s)) {

	case TC_ELSE:
	    if (level == 0 && type == TC_IF)
		goto end;
	    break;

	case TC_IF:
	    while (FUNC11(&word)) {
		if (intty) {
		    histent->word = FUNC5(word.s);
		    histent->next = FUNC20(sizeof(*histent));
		    histent->next->prev = histent;
		    histent = histent->next;
		}
		continue;
	    }
	    
	    if ((type == TC_IF || type == TC_ELSE) &&
		FUNC9(word.s, STRthen))
		level++;
	    break;

	case TC_ENDIF:
	    if (type == TC_IF || type == TC_ELSE)
		level--;
	    break;

	case TC_FOREACH:
	case TC_WHILE:
	    wlevel++;
	    if (type == TC_BREAK)
		level++;
	    break;

	case TC_END:
	    if (type == TC_BRKSW) {
		if (wlevel == 0) {
		    wp = whyles;
		    if (wp) {
			    whyles = wp->w_next;
			    FUNC18(wp);
		    }
		}
	    }
	    if (type == TC_BREAK)
		level--;
	    wlevel--;
	    break;

	case TC_SWITCH:
	    if (type == TC_SWITCH || type == TC_BRKSW)
		level++;
	    break;

	case TC_ENDSW:
	    if (type == TC_SWITCH || type == TC_BRKSW)
		level--;
	    break;

	case TC_LABEL:
	    if (type == TC_GOTO && FUNC11(&word) && FUNC9(word.s, goal))
		level = -1;
	    break;

	default:
	    if (type != TC_GOTO && (type != TC_SWITCH || level != 0))
		break;
	    if (word.len == 0 || word.s[word.len - 1] != ':')
		break;
	    word.s[--word.len] = 0;
	    if ((type == TC_GOTO && FUNC9(word.s, goal)) ||
		(type == TC_SWITCH && FUNC9(word.s, STRdefault)))
		level = -1;
	    break;

	case TC_CASE:
	    if (type != TC_SWITCH || level != 0)
		break;
	    (void) FUNC11(&word);
	    if (word.len != 0 && word.s[word.len - 1] == ':')
		word.s[--word.len] = 0;
	    cp = FUNC17(FUNC0(word.s));
	    FUNC7(cp, xfree);
	    if (FUNC1(goal, cp))
		level = -1;
	    FUNC8(cp);
	    break;

	case TC_DEFAULT:
	    if (type == TC_SWITCH && level == 0)
		level = -1;
	    break;
	}
	if (intty) {
	    ohistent->prev = FUNC12(histent);
	    ohistent->prev->next = ohistent;
	    FUNC15(ohistent, 0);
	    FUNC10(ohistent);
	    FUNC19(ohistent);
	} else 
	    (void) FUNC11(NULL);
    } while (level >= 0);
 end:
    FUNC8(&word);
}