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
struct hostent {int h_addrtype; int h_length; int /*<<< orphan*/  h_addr_list; int /*<<< orphan*/  h_aliases; int /*<<< orphan*/ * h_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  sl_str; } ;
typedef  TYPE_1__ StringList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostent*) ; 
 int FUNC4 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hostent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 void* FUNC10 (char*) ; 
 char* FUNC11 (char**,char*) ; 
 scalar_t__ FUNC12 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC13(struct hostent *ht, char *line)
{
	StringList *sl1, *sl2;
	char *s, *ps, *ts;
	int i, rv;

#ifdef DEBUG
	printf("1 line read from snapshot:\n%s\n", line);
#endif

	rv = 0;
	i = 0;
	sl1 = sl2 = NULL;
	ps = line;
	FUNC5(ht, 0, sizeof(struct hostent));
	while ((s = FUNC11(&ps, " ")) != NULL) {
		switch (i) {
		case 0:
			ht->h_name = FUNC10(s);
			FUNC0(ht->h_name != NULL);
			break;

		case 1:
			ht->h_addrtype = (int)FUNC12(s, &ts, 10);
			if (*ts != '\0')
				goto fin;
			break;

		case 2:
			ht->h_length = (int)FUNC12(s, &ts, 10);
			if (*ts != '\0')
				goto fin;
			break;

		case 3:
			if (sl1 == NULL) {
				if (FUNC9(s, "(null)") == 0)
					return (0);

				sl1 = FUNC8();
				FUNC0(sl1 != NULL);

				if (FUNC9(s, "noaliases") != 0) {
					ts = FUNC10(s);
					FUNC0(ts != NULL);
					FUNC7(sl1, ts);
				}
			} else {
				if (FUNC9(s, ":") == 0)
					++i;
				else {
					ts = FUNC10(s);
					FUNC0(ts != NULL);
					FUNC7(sl1, ts);
				}
			}
			break;

		case 4:
			if (sl2 == NULL) {
				if (FUNC9(s, "(null)") == 0)
					return (0);

				sl2 = FUNC8();
				FUNC0(sl2 != NULL);

				if (FUNC9(s, "noaddrs") != 0) {
					ts = FUNC1(1, ht->h_length);
					FUNC0(ts != NULL);
					rv = FUNC4(s,
					    (unsigned char *)ts,
					    ht->h_length);
					FUNC7(sl2, ts);
					if (rv != 0)
						goto fin;
				}
			} else {
				ts = FUNC1(1, ht->h_length);
				FUNC0(ts != NULL);
				rv = FUNC4(s,
				    (unsigned char *)ts, ht->h_length);
				FUNC7(sl2, ts);
				if (rv != 0)
					goto fin;
			}
			break;
		default:
			break;
		}

		if (i != 3 && i != 4)
			++i;
	}

fin:
	if (sl1 != NULL) {
		FUNC7(sl1, NULL);
		ht->h_aliases = sl1->sl_str;
	}
	if (sl2 != NULL) {
		FUNC7(sl2, NULL);
		ht->h_addr_list = sl2->sl_str;
	}

	if ((i != 4) || (rv != 0)) {
		FUNC3(ht);
		FUNC5(ht, 0, sizeof(struct hostent));
		return (-1);
	}

	/* NOTE: is it a dirty hack or not? */
	FUNC2(sl1);
	FUNC2(sl2);
	return (0);
}