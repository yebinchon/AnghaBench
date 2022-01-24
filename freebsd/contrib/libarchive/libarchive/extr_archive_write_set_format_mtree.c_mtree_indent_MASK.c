#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* s; } ;
struct mtree_writer {int depth; TYPE_1__ ebuf; int /*<<< orphan*/  buf; scalar_t__ indent; scalar_t__ classic; } ;

/* Variables and functions */
 int INDENTNAMELEN ; 
 int MAXLINELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(struct mtree_writer *mtree)
{
	int i, fn, nd, pd;
	const char *r, *s, *x;

	if (mtree->classic) {
		if (mtree->indent) {
			nd = 0;
			pd = mtree->depth * 4;
		} else {
			nd = mtree->depth?4:0;
			pd = 0;
		}
	} else
		nd = pd = 0;
	fn = 1;
	s = r = mtree->ebuf.s;
	x = NULL;
	while (*r == ' ')
		r++;
	while ((r = FUNC4(r, ' ')) != NULL) {
		if (fn) {
			fn = 0;
			for (i = 0; i < nd + pd; i++)
				FUNC0(&mtree->buf, ' ');
			FUNC3(&mtree->buf, s, r - s);
			if (nd + (r -s) > INDENTNAMELEN) {
				FUNC3(&mtree->buf, " \\\n", 3);
				for (i = 0; i < (INDENTNAMELEN + 1 + pd); i++)
					FUNC0(&mtree->buf, ' ');
			} else {
				for (i = (int)(r -s + nd);
				    i < (INDENTNAMELEN + 1); i++)
					FUNC0(&mtree->buf, ' ');
			}
			s = ++r;
			x = NULL;
			continue;
		}
		if (pd + (r - s) <= MAXLINELEN - 3 - INDENTNAMELEN)
			x = r++;
		else {
			if (x == NULL)
				x = r;
			FUNC3(&mtree->buf, s, x - s);
			FUNC3(&mtree->buf, " \\\n", 3);
			for (i = 0; i < (INDENTNAMELEN + 1 + pd); i++)
				FUNC0(&mtree->buf, ' ');
			s = r = ++x;
			x = NULL;
		}
	}
	if (fn) {
		for (i = 0; i < nd + pd; i++)
			FUNC0(&mtree->buf, ' ');
		FUNC1(&mtree->buf, s);
		s += FUNC5(s);
	}
	if (x != NULL && pd + FUNC5(s) > MAXLINELEN - 3 - INDENTNAMELEN) {
		/* Last keyword is longer. */
		FUNC3(&mtree->buf, s, x - s);
		FUNC3(&mtree->buf, " \\\n", 3);
		for (i = 0; i < (INDENTNAMELEN + 1 + pd); i++)
			FUNC0(&mtree->buf, ' ');
		s = ++x;
	}
	FUNC1(&mtree->buf, s);
	FUNC2(&mtree->ebuf);
}