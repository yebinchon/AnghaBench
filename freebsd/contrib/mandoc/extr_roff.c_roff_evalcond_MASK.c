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
struct roff {int dummy; } ;

/* Variables and functions */
#define  ESCAPE_NUMBERED 130 
#define  ESCAPE_SPECIAL 129 
#define  ESCAPE_UNICODE 128 
 int ROFFDEF_ANY ; 
 int /*<<< orphan*/  ROFFNUM_SCALE ; 
 int /*<<< orphan*/  FUNC0 (char const**,char const**,int*) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (struct roff*,int,char*,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int*) ; 
 size_t FUNC5 (struct roff*,char**,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct roff*,char*,size_t,int*) ; 
 int FUNC7 (struct roff*,char*,size_t) ; 

__attribute__((used)) static int
FUNC8(struct roff *r, int ln, char *v, int *pos)
{
	const char	*start, *end;
	char		*cp, *name;
	size_t		 sz;
	int		 deftype, len, number, savepos, istrue, wanttrue;

	if ('!' == v[*pos]) {
		wanttrue = 0;
		(*pos)++;
	} else
		wanttrue = 1;

	switch (v[*pos]) {
	case '\0':
		return 0;
	case 'n':
	case 'o':
		(*pos)++;
		return wanttrue;
	case 'e':
	case 't':
	case 'v':
		(*pos)++;
		return !wanttrue;
	case 'c':
		do {
			(*pos)++;
		} while (v[*pos] == ' ');

		/*
		 * Quirk for groff compatibility:
		 * The horizontal tab is neither available nor unavailable.
		 */

		if (v[*pos] == '\t') {
			(*pos)++;
			return 0;
		}

		/* Printable ASCII characters are available. */

		if (v[*pos] != '\\') {
			(*pos)++;
			return wanttrue;
		}

		end = v + ++*pos;
		switch (FUNC0(&end, &start, &len)) {
		case ESCAPE_SPECIAL:
			istrue = FUNC2(start, len) != -1;
			break;
		case ESCAPE_UNICODE:
			istrue = 1;
			break;
		case ESCAPE_NUMBERED:
			istrue = FUNC1(start, len) != -1;
			break;
		default:
			istrue = !wanttrue;
			break;
		}
		*pos = end - v;
		return istrue == wanttrue;
	case 'd':
	case 'r':
		cp = v + *pos + 1;
		while (*cp == ' ')
			cp++;
		name = cp;
		sz = FUNC5(r, &cp, ln, cp - v);
		if (sz == 0)
			istrue = 0;
		else if (v[*pos] == 'r')
			istrue = FUNC7(r, name, sz);
		else {
			deftype = ROFFDEF_ANY;
		        FUNC6(r, name, sz, &deftype);
			istrue = !!deftype;
		}
		*pos = (name + sz) - v;
		return istrue == wanttrue;
	default:
		break;
	}

	savepos = *pos;
	if (FUNC3(r, ln, v, pos, &number, ROFFNUM_SCALE))
		return (number > 0) == wanttrue;
	else if (*pos == savepos)
		return FUNC4(v, pos) == wanttrue;
	else
		return 0;
}