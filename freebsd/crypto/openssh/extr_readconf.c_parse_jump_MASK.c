#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* jump_host; int jump_port; char* jump_user; char* jump_extra; int /*<<< orphan*/ * proxy_command; } ;
typedef  TYPE_1__ Options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char**,char**,int*) ; 
 scalar_t__ FUNC2 (char*,char**,char**,int*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*,char) ; 
 void* FUNC5 (char const*) ; 

int
FUNC6(const char *s, Options *o, int active)
{
	char *orig, *sdup, *cp;
	char *host = NULL, *user = NULL;
	int ret = -1, port = -1, first;

	active &= o->proxy_command == NULL && o->jump_host == NULL;

	orig = sdup = FUNC5(s);
	first = active;
	do {
		if (FUNC3(s, "none") == 0)
			break;
		if ((cp = FUNC4(sdup, ',')) == NULL)
			cp = sdup; /* last */
		else
			*cp++ = '\0';

		if (first) {
			/* First argument and configuration is active */
			if (FUNC1(cp, &user, &host, &port) == -1 ||
			    FUNC2(cp, &user, &host, &port) != 0)
				goto out;
		} else {
			/* Subsequent argument or inactive configuration */
			if (FUNC1(cp, NULL, NULL, NULL) == -1 ||
			    FUNC2(cp, NULL, NULL, NULL) != 0)
				goto out;
		}
		first = 0; /* only check syntax for subsequent hosts */
	} while (cp != sdup);
	/* success */
	if (active) {
		if (FUNC3(s, "none") == 0) {
			o->jump_host = FUNC5("none");
			o->jump_port = 0;
		} else {
			o->jump_user = user;
			o->jump_host = host;
			o->jump_port = port;
			o->proxy_command = FUNC5("none");
			user = host = NULL;
			if ((cp = FUNC4(s, ',')) != NULL && cp != s) {
				o->jump_extra = FUNC5(s);
				o->jump_extra[cp - s] = '\0';
			}
		}
	}
	ret = 0;
 out:
	FUNC0(orig);
	FUNC0(user);
	FUNC0(host);
	return ret;
}