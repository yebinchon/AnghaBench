#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct Strbuf {size_t len; int /*<<< orphan*/  s; } ;
struct TYPE_3__ {struct TYPE_3__* sibling; struct TYPE_3__* next; int /*<<< orphan*/  type; int /*<<< orphan*/  val; int /*<<< orphan*/  ch; } ;
typedef  TYPE_1__ XmapNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct Strbuf *buf, const XmapNode *ptr)
{
    size_t old_len;

    if (ptr == NULL) {
#ifdef DEBUG_EDIT
	xprintf(CGETS(9, 6, "Enumerate: BUG!! Null ptr passed\n!"));
#endif
	return;
    }

    old_len = buf->len;
    FUNC4(buf, ptr->ch); /* put this char at end of string */
    if (ptr->next == NULL) {
	/* print this Xkey and function */
	FUNC1(buf, '"');
	FUNC2(buf);
	FUNC3(buf->s, &ptr->val, ptr->type);
    }
    else
	FUNC6(buf, ptr->next);

    /* go to sibling if there is one */
    if (ptr->sibling) {
	buf->len = old_len;
	FUNC6(buf, ptr->sibling);
    }
}