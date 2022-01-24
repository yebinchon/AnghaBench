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
struct termp {int /*<<< orphan*/  line; } ;
struct roff_node {scalar_t__ type; char* string; } ;

/* Variables and functions */
#define  ESCAPE_FONT 134 
#define  ESCAPE_FONTBI 133 
#define  ESCAPE_FONTBOLD 132 
#define  ESCAPE_FONTITALIC 131 
#define  ESCAPE_FONTPREV 130 
#define  ESCAPE_FONTROMAN 129 
#define  ESCAPE_SPECIAL 128 
 int INT_MAX ; 
 scalar_t__ ROFFT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const**,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct termp *p, struct roff_node *n)
{
	const char	*cp, *arg;
	int		 prio, sz;

	FUNC0(n->type == ROFFT_TEXT);
	cp = n->string;
	prio = 1;
	for (;;) {
		switch (*cp) {
		case ' ':
		case '\t':
			prio = INT_MAX;
			/* FALLTHROUGH */
		case '-':
			cp++;
			break;
		case '\\':
			cp++;
			switch (FUNC2(&cp, &arg, &sz)) {
			case ESCAPE_FONT:
			case ESCAPE_FONTROMAN:
			case ESCAPE_FONTITALIC:
			case ESCAPE_FONTBOLD:
			case ESCAPE_FONTPREV:
			case ESCAPE_FONTBI:
				break;
			case ESCAPE_SPECIAL:
				if (sz != 1)
					return;
				switch (*arg) {
				case '&':
				case '-':
				case 'e':
					break;
				default:
					return;
				}
				break;
			default:
				return;
			}
			break;
		default:
			if (FUNC1((unsigned char)*cp))
				FUNC3(cp, prio, p->line);
			return;
		}
	}
}