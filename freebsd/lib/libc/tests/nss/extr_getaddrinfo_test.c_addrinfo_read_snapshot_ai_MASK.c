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
struct addrinfo {int ai_flags; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/ * ai_canonname; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 char* FUNC7 (char**,char*) ; 
 scalar_t__ FUNC8 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC9(struct addrinfo *ai, char *line)
{
	char *s, *ps, *ts;
	int i, rv, *pi;

	rv = 0;
	i = 0;
	ps = line;
	FUNC4(ai, 0, sizeof(struct addrinfo));
	while ((s = FUNC7(&ps, " ")) != NULL) {
		switch (i) {
		case 0:
		case 1:
		case 2:
		case 3:
			pi = &ai->ai_flags + i;
			*pi = (int)FUNC8(s, &ts, 10);
			if (*ts != '\0')
				goto fin;
			break;
		case 4:
			ai->ai_addrlen = (socklen_t)FUNC8(s, &ts, 10);
			if (*ts != '\0')
				goto fin;
			break;
		case 5:
			if (FUNC5(s, "(null)") != 0) {
				ai->ai_canonname = FUNC6(s);
				FUNC0(ai->ai_canonname != NULL);
			}
			break;
		case 6:
			if (FUNC5(s, "(null)") != 0) {
				ai->ai_addr = FUNC2(1, ai->ai_addrlen);
				FUNC0(ai->ai_addr != NULL);
				rv = FUNC1(s,
				    (unsigned char *)ai->ai_addr,
				    ai->ai_addrlen);

				if (rv != 0)
					goto fin;
			}
			break;
		default:
			/* NOTE: should not be reachable */
			rv = -1;
			goto fin;
		}

		++i;
	}

fin:
	if (i != 7 || rv != 0) {
		FUNC3(ai);
		ai = NULL;
		return (-1);
	}

	return (0);
}