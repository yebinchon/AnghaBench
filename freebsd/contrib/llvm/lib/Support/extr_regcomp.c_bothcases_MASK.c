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
typedef  int uch ;
struct parse {char* next; char* end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct parse*) ; 

__attribute__((used)) static void
FUNC3(struct parse *p, int ch)
{
	char *oldnext = p->next;
	char *oldend = p->end;
	char bracket[3];

	ch = (uch)ch;
	FUNC0(FUNC1(ch) != ch);	/* p_bracket() would recurse */
	p->next = bracket;
	p->end = bracket+2;
	bracket[0] = ch;
	bracket[1] = ']';
	bracket[2] = '\0';
	FUNC2(p);
	FUNC0(p->next == bracket+2);
	p->next = oldnext;
	p->end = oldend;
}