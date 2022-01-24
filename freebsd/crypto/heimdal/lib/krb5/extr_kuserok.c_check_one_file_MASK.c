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
struct stat {int st_mode; scalar_t__ st_uid; } ;
struct passwd {scalar_t__ pw_uid; } ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_boolean ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EISDIR ; 
 int EOF ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,char*) ; 

__attribute__((used)) static krb5_error_code
FUNC12(krb5_context context,
	       const char *filename,
	       struct passwd *pwd,
	       krb5_principal principal,
	       krb5_boolean *result)
{
    FILE *f;
    char buf[BUFSIZ];
    krb5_error_code ret;
    struct stat st;

    *result = FALSE;

    f = FUNC5 (filename, "r");
    if (f == NULL)
	return errno;
    FUNC10(f);

    /* check type and mode of file */
    if (FUNC6(FUNC4(f), &st) != 0) {
	FUNC1 (f);
	return errno;
    }
    if (FUNC0(st.st_mode)) {
	FUNC1 (f);
	return EISDIR;
    }
    if (st.st_uid != pwd->pw_uid && st.st_uid != 0) {
	FUNC1 (f);
	return EACCES;
    }
    if ((st.st_mode & (S_IWGRP | S_IWOTH)) != 0) {
	FUNC1 (f);
	return EACCES;
    }

    while (FUNC3 (buf, sizeof(buf), f) != NULL) {
	krb5_principal tmp;
	char *newline = buf + FUNC11(buf, "\n");

	if(*newline != '\n') {
	    int c;
	    c = FUNC2(f);
	    if(c != EOF) {
		while(c != EOF && c != '\n')
		    c = FUNC2(f);
		/* line was too long, so ignore it */
		continue;
	    }
	}
	*newline = '\0';
	ret = FUNC8 (context, buf, &tmp);
	if (ret)
	    continue;
	*result = FUNC9 (context, principal, tmp);
	FUNC7 (context, tmp);
	if (*result) {
	    FUNC1 (f);
	    return 0;
	}
    }
    FUNC1 (f);
    return 0;
}