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
struct passwd {int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 char* FUNC3 (char const**) ; 
 char* FUNC4 (char*) ; 
 struct passwd* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC9 (char *a0, const char **host, const char **user)
{
    const char *h, *u;
    char *p;
    int po = 0;

    if (a0 == NULL) {

	*user = FUNC4 ("USERNAME");
	if (*user == NULL) {
	    struct passwd *pwd = FUNC5 (FUNC6 ());

	    if (pwd == NULL)
		FUNC0 (1, "Who are you?");
	    *user = FUNC1 (pwd->pw_name);
	}
	*host = FUNC3 (user);
	return;
    }

    /* if the specification starts with po:, remember this information */
    if(FUNC8(a0, "po:", 3) == 0) {
	a0 += 3;
	po++;
    }
    /* if there is an `@', the hostname is after it, otherwise at the
       beginning of the string */
    p = FUNC7(a0, '@');
    if(p != NULL) {
	*p++ = '\0';
	h = p;
    } else {
	h = a0;
    }
    /* if there is a `:', the username comes before it, otherwise at
       the beginning of the string */
    p = FUNC7(a0, ':');
    if(p != NULL) {
	*p++ = '\0';
	u = p;
    } else {
	u = a0;
    }
    if(h == u) {
	/* some inconsistent compatibility with various mailers */
	if(po) {
	    h = FUNC3 (&u);
	} else {
	    u = FUNC2 ();
	    if (u == NULL)
		FUNC0 (1, "Who are you?");
	}
    }
    *host = h;
    *user = u;
}