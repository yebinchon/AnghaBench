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

/* Variables and functions */
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 char** FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 
 char** FUNC4 (char**,int) ; 
 scalar_t__ FUNC5 (char*) ; 

int
FUNC6(char *line, int *ret_argc, char ***ret_argv)
{
    char *p, *begining;
    int argc, nargv;
    char **argv;
    int quote = 0;

    nargv = 10;
    argv = FUNC2(nargv * sizeof(*argv));
    if(argv == NULL)
	return ENOMEM;
    argc = 0;

    p = line;

    while(FUNC1((unsigned char)*p))
	p++;
    begining = p;

    while (1) {
	if (*p == '\0') {
	    ;
	} else if (*p == '"') {
	    quote = !quote;
	    FUNC3(&p[0], &p[1], FUNC5(&p[1]) + 1);
	    continue;
	} else if (*p == '\\') {
	    if (p[1] == '\0')
		goto failed;
	    FUNC3(&p[0], &p[1], FUNC5(&p[1]) + 1);
	    p += 2;
	    continue;
	} else if (quote || !FUNC1((unsigned char)*p)) {
	    p++;
	    continue;
	} else
	    *p++ = '\0';
	if (quote)
	    goto failed;
	if(argc == nargv - 1) {
	    char **tmp;
	    nargv *= 2;
	    tmp = FUNC4 (argv, nargv * sizeof(*argv));
	    if (tmp == NULL) {
		FUNC0(argv);
		return ENOMEM;
	    }
	    argv = tmp;
	}
	argv[argc++] = begining;
	while(FUNC1((unsigned char)*p))
	    p++;
	if (*p == '\0')
	    break;
	begining = p;
    }
    argv[argc] = NULL;
    *ret_argc = argc;
    *ret_argv = argv;
    return 0;
failed:
    FUNC0(argv);
    return ERANGE;
}