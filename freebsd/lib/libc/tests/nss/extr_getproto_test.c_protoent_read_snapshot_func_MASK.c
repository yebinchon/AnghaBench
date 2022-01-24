#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct protoent {int p_proto; int /*<<< orphan*/  p_aliases; TYPE_1__* p_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  sl_str; } ;
typedef  TYPE_1__ StringList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct protoent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 void* FUNC7 (char*) ; 
 char* FUNC8 (char**,char*) ; 
 scalar_t__ FUNC9 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC10(struct protoent *pe, char *line)
{
	StringList *sl;
	char *s, *ps, *ts;
	int i;

	FUNC3("1 line read from snapshot:\n%s\n", line);

	i = 0;
	sl = NULL;
	ps = line;
	FUNC2(pe, 0, sizeof(struct protoent));
	while ( (s = FUNC8(&ps, " ")) != NULL) {
		switch (i) {
			case 0:
				pe->p_name = FUNC7(s);
				FUNC0(pe->p_name != NULL);
			break;

			case 1:
				pe->p_proto = (int)FUNC9(s, &ts, 10);
				if (*ts != '\0') {
					FUNC1(pe->p_name);
					return (-1);
				}
			break;

			default:
				if (sl == NULL) {
					if (FUNC6(s, "(null)") == 0)
						return (0);

					sl = FUNC5();
					FUNC0(sl != NULL);

					if (FUNC6(s, "noaliases") != 0) {
						ts = FUNC7(s);
						FUNC0(ts != NULL);
						FUNC4(sl, ts);
					}
				} else {
					ts = FUNC7(s);
					FUNC0(ts != NULL);
					FUNC4(sl, ts);
				}
			break;
		}
		++i;
	}

	if (i < 3) {
		FUNC1(pe->p_name);
		FUNC2(pe, 0, sizeof(struct protoent));
		return (-1);
	}

	FUNC4(sl, NULL);
	pe->p_aliases = sl->sl_str;

	/* NOTE: is it a dirty hack or not? */
	FUNC1(sl);
	return (0);
}