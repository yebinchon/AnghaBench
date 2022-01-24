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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int ENOMEM ; 
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 char** FUNC5 (char**,int) ; 
 char* FUNC6 (char*,char) ; 
 size_t FUNC7 (char*,char*) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(FILE *F, char ***env, int *assigned)
{
    int idx = 0;
    int i;
    char **l;
    char buf[BUFSIZ], *p, *r;
    char **tmp;
    int ret = 0;

    *assigned = 0;

    for(idx = 0; *env != NULL && (*env)[idx] != NULL; idx++);
    l = *env;

    /* This is somewhat more relaxed on what it accepts then
     * Wietses sysv_environ from K4 was...
     */
    while (FUNC1(buf, BUFSIZ, F) != NULL) {
	buf[FUNC7(buf, "#\n")] = '\0';

	for(p = buf; FUNC4((unsigned char)*p); p++);
	if (*p == '\0')
	    continue;

	/* Here one should check that it's a 'valid' env string... */
	r = FUNC6(p, '=');
	if (r == NULL)
	    continue;

	if((i = FUNC2(l, p, r - p + 1)) >= 0) {
	    char *val = FUNC8(p);
	    if(val == NULL) {
		ret = ENOMEM;
		break;
	    }
	    FUNC3(l[i]);
	    l[i] = val;
	    (*assigned)++;
	    continue;
	}

	tmp = FUNC5(l, (idx+2) * sizeof (char *));
	if(tmp == NULL) {
	    ret = ENOMEM;
	    break;
	}

	l = tmp;
	l[idx] = FUNC8(p);
	if(l[idx] == NULL) {
	    ret = ENOMEM;
	    break;
	}
	l[++idx] = NULL;
	(*assigned)++;
    }
    if(FUNC0(F))
	ret = errno;
    *env = l;
    return ret;
}