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
struct blk_buf {int len; } ;
struct Strbuf {size_t len; int /*<<< orphan*/  s; } ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 struct blk_buf BLK_BUF_INIT ; 
 scalar_t__ const EOS ; 
#define  LBRC 130 
#define  LBRK 129 
#define  RBRC 128 
 scalar_t__ const RBRK ; 
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_buf*) ; 
 scalar_t__** FUNC6 (struct blk_buf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(const Char *s, Char ***bl)
{
    struct Strbuf gbuf = Strbuf_INIT;
    struct blk_buf bb = BLK_BUF_INIT;
    int     i;
    const Char *p, *pm, *pe, *pl;
    size_t prefix_len;

    /* copy part up to the brace */
    for (p = s; *p != LBRC; p++)
	;
    prefix_len = p - s;

    /* check for balanced braces */
    for (i = 0, pe = ++p; *pe; pe++)
	if (*pe == LBRK) {
	    /* Ignore everything between [] */
	    for (++pe; *pe != RBRK && *pe != EOS; pe++)
		continue;
	    if (*pe == EOS)
		return (-RBRK);
	}
	else if (*pe == LBRC)
	    i++;
	else if (*pe == RBRC) {
	    if (i == 0)
		break;
	    i--;
	}

    if (i != 0 || *pe == '\0')
	return (-RBRC);

    FUNC1(&gbuf, s, prefix_len);

    for (i = 0, pl = pm = p; pm <= pe; pm++)
	switch (*pm) {
	case LBRK:
	    for (++pm; *pm != RBRK && *pm != EOS; pm++)
		continue;
	    if (*pm == EOS) {
		FUNC5(&bb);
		FUNC7(gbuf.s);
		return (-RBRK);
	    }
	    break;
	case LBRC:
	    i++;
	    break;
	case RBRC:
	    if (i) {
		i--;
		break;
	    }
	    /* FALLTHROUGH */
	case ',':
	    if (i && *pm == ',')
		break;
	    else {
		gbuf.len = prefix_len;
		FUNC1(&gbuf, pl, pm - pl);
		FUNC0(&gbuf, pe + 1);
		FUNC2(&gbuf);
		FUNC4(&bb, FUNC3(gbuf.s));
		pl = pm + 1;
	    }
	    break;
	default:
	    break;
	}
    *bl = FUNC6(&bb);
    FUNC7(gbuf.s);
    return bb.len;
}