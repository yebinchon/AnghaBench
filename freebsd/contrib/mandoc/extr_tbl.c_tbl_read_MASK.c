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
struct tbl_node {int part; } ;

/* Variables and functions */
#define  TBL_PART_CDATA 129 
#define  TBL_PART_LAYOUT 128 
 int TBL_PART_OPTS ; 
 int /*<<< orphan*/  FUNC0 (struct tbl_node*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tbl_node*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tbl_node*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tbl_node*,int,char const*,int*) ; 

void
FUNC4(struct tbl_node *tbl, int ln, const char *p, int pos)
{
	const char	*cp;
	int		 active;

	/*
	 * In the options section, proceed to the layout section
	 * after a semicolon, or right away if there is no semicolon.
	 * Ignore semicolons in arguments.
	 */

	if (tbl->part == TBL_PART_OPTS) {
		tbl->part = TBL_PART_LAYOUT;
		active = 1;
		for (cp = p + pos; *cp != '\0'; cp++) {
			switch (*cp) {
			case '(':
				active = 0;
				continue;
			case ')':
				active = 1;
				continue;
			case ';':
				if (active)
					break;
				continue;
			default:
				continue;
			}
			break;
		}
		if (*cp == ';') {
			FUNC3(tbl, ln, p, &pos);
			if (p[pos] == '\0')
				return;
		}
	}

	/* Process the other section types.  */

	switch (tbl->part) {
	case TBL_PART_LAYOUT:
		FUNC2(tbl, ln, p, pos);
		break;
	case TBL_PART_CDATA:
		FUNC0(tbl, ln, p, pos);
		break;
	default:
		FUNC1(tbl, ln, p, pos);
		break;
	}
}