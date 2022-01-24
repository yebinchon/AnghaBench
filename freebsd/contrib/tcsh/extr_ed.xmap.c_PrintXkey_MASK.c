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
struct Strbuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ CStr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int FUNC1 (struct Strbuf*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STRNULL ; 
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*,char) ; 
 int /*<<< orphan*/  Strbuf_cleanup ; 
 int /*<<< orphan*/ * Xmap ; 
 int /*<<< orphan*/  FUNC3 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(const CStr *key)
{
    struct Strbuf buf = Strbuf_INIT;
    CStr cs;

    if (key) {
	cs.buf = key->buf;
	cs.len = key->len;
    }
    else {
	cs.buf = STRNULL;
	cs.len = 0;
    }
    /* do nothing if Xmap is empty and null key specified */
    if (Xmap == NULL && cs.len == 0)
	return;

    FUNC2(&buf, '"');
    FUNC3(&buf, Strbuf_cleanup);
    if (FUNC1(&buf, &cs, Xmap) <= -1)
	/* key is not bound */
	FUNC5(FUNC0(9, 4, "Unbound extended key \"%S\"\n"), cs.buf);
    FUNC4(&buf);
}