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
struct scroll_tab_list {int /*<<< orphan*/ * element; struct scroll_tab_list* next; } ;
struct Strbuf {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 size_t curchoice ; 
 int /*<<< orphan*/  fcompare ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int,int,int /*<<< orphan*/ ) ; 
 struct scroll_tab_list* scroll_tab ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/ ** FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct Strbuf *exp_name, int cnt)
{
    struct scroll_tab_list *loop;
    int tmp = cnt;
    Char **ptr;

    ptr = FUNC5(sizeof(Char *) * cnt);
    FUNC2(ptr, xfree);

    for(loop = scroll_tab; loop && (tmp >= 0); loop = loop->next)
	ptr[--tmp] = loop->element;

    FUNC4(ptr, cnt, sizeof(Char *), fcompare);

    exp_name->len = 0;
    FUNC0(exp_name, ptr[curchoice]);
    FUNC1(exp_name);
    FUNC3(ptr);
}