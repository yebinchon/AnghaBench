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
struct servent {int /*<<< orphan*/  s_aliases; TYPE_1__* s_proto; TYPE_1__* s_name; int /*<<< orphan*/  s_port; } ;
struct TYPE_5__ {int /*<<< orphan*/  sl_str; } ;
typedef  TYPE_1__ StringList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct servent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 void* FUNC8 (char*) ; 
 char* FUNC9 (char**,char*) ; 
 scalar_t__ FUNC10 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC11(struct servent *serv, char *line)
{
	StringList *sl;
	char *s, *ps, *ts;
	int i;

	FUNC4("1 line read from snapshot:\n%s\n", line);

	i = 0;
	sl = NULL;
	ps = line;
	FUNC3(serv, 0, sizeof(struct servent));
	while ( (s = FUNC9(&ps, " ")) != NULL) {
		switch (i) {
			case 0:
				serv->s_name = FUNC8(s);
				FUNC0(serv->s_name != NULL);
			break;

			case 1:
				serv->s_port = FUNC2(
					(int)FUNC10(s, &ts, 10));
				if (*ts != '\0') {
					FUNC1(serv->s_name);
					return (-1);
				}
			break;

			case 2:
				serv->s_proto = FUNC8(s);
				FUNC0(serv->s_proto != NULL);
			break;

			default:
				if (sl == NULL) {
					if (FUNC7(s, "(null)") == 0)
						return (0);

					sl = FUNC6();
					FUNC0(sl != NULL);

					if (FUNC7(s, "noaliases") != 0) {
						ts = FUNC8(s);
						FUNC0(ts != NULL);
						FUNC5(sl, ts);
					}
				} else {
					ts = FUNC8(s);
					FUNC0(ts != NULL);
					FUNC5(sl, ts);
				}
			break;
		}
		++i;
	}

	if (i < 3) {
		FUNC1(serv->s_name);
		FUNC1(serv->s_proto);
		FUNC3(serv, 0, sizeof(struct servent));
		return (-1);
	}

	FUNC5(sl, NULL);
	serv->s_aliases = sl->sl_str;

	/* NOTE: is it a dirty hack or not? */
	FUNC1(sl);
	return (0);
}