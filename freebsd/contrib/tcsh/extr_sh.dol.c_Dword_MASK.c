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
struct blk_buf {int* s; int /*<<< orphan*/  len; } ;
struct Strbuf {int* s; int /*<<< orphan*/  len; } ;
typedef  int eChar ;
typedef  char Char ;

/* Variables and functions */
#define  DEOF 128 
 int DODOL ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct blk_buf*) ; 
 int /*<<< orphan*/  ERR_UNMATCHED ; 
 int QUOTE ; 
 struct blk_buf* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct blk_buf*,char) ; 
 char* FUNC4 (struct blk_buf*) ; 
 int /*<<< orphan*/  Strbuf_free ; 
 int TRIM ; 
 int /*<<< orphan*/  FUNC5 (struct blk_buf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct blk_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct blk_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct blk_buf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct blk_buf*) ; 

__attribute__((used)) static int
FUNC13(struct blk_buf *bb)
{
    eChar c, c1;
    struct Strbuf *wbuf = FUNC2();
    int dolflg;
    int    sofar = 0;
    Char *str;

    FUNC7(wbuf, Strbuf_free);
    for (;;) {
	c = FUNC0(DODOL);
	switch (c) {

	case DEOF:
	    if (sofar == 0) {
		FUNC8(wbuf);
		return (0);
	    }
	    /* finish this word and catch the code above the next time */
	    FUNC11(c);
	    /*FALLTHROUGH*/

	case '\n':
	    goto end;

	case ' ':
	case '\t':
	    continue;

	case '`':
	    /* We preserve ` quotations which are done yet later */
	    FUNC3(wbuf, (Char) c);
	    /*FALLTHROUGH*/
	case '\'':
	case '"':
	    /*
	     * Note that DgetC never returns a QUOTES character from an
	     * expansion, so only true input quotes will get us here or out.
	     */
	    c1 = c;
	    dolflg = c1 == '"' ? DODOL : 0;
	    for (;;) {
		c = FUNC0(dolflg);
		if (c == c1)
		    break;
		if (c == '\n' || c == DEOF) {
		    FUNC8(bb);
		    FUNC9(ERR_UNMATCHED, (int)c1);
		}
		if ((c & (QUOTE | TRIM)) == ('\n' | QUOTE)) {
		    if (wbuf->len != 0 && (wbuf->s[wbuf->len - 1] & TRIM) == '\\')
			wbuf->len--;
		}
		switch (c1) {

		case '"':
		    /*
		     * Leave any `s alone for later. Other chars are all
		     * quoted, thus `...` can tell it was within "...".
		     */
		    FUNC3(wbuf, c == '`' ? '`' : c | QUOTE);
		    break;

		case '\'':
		    /* Prevent all further interpretation */
		    FUNC3(wbuf, c | QUOTE);
		    break;

		case '`':
		    /* Leave all text alone for later */
		    FUNC3(wbuf, (Char) c);
		    break;

		default:
		    break;
		}
	    }
	    if (c1 == '`')
		FUNC3(wbuf, '`');
	    sofar = 1;
	    if (FUNC1(wbuf) != 0)
		goto end;
	    continue;

	case '\\':
	    c = FUNC0(0);	/* No $ subst! */
	    if (c == '\n' || c == DEOF)
		continue;
	    c |= QUOTE;
	    break;

	default:
	    break;
	}
	FUNC10(c);
	sofar = 1;
	if (FUNC1(wbuf) != 0)
	    goto end;
    }

 end:
    FUNC6(wbuf);
    FUNC8(wbuf);
    str = FUNC4(wbuf);
    FUNC5(bb, str);
    FUNC12(wbuf);
    return 1;
}