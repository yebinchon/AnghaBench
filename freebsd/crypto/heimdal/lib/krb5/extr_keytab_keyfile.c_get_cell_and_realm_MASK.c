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
struct akf_data {int /*<<< orphan*/ * cell; int /*<<< orphan*/ * realm; } ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVERMAGICKRBCONF ; 
 int /*<<< orphan*/  AFS_SERVERTHISCELL ; 
 int BUFSIZ ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 size_t FUNC6 (char*,char*) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char FUNC9 (unsigned char) ; 

__attribute__((used)) static int
FUNC10 (krb5_context context, struct akf_data *d)
{
    FILE *f;
    char buf[BUFSIZ], *cp;
    int ret;

    f = FUNC3 (AFS_SERVERTHISCELL, "r");
    if (f == NULL) {
	ret = errno;
	FUNC5 (context, ret,
				FUNC0("Open ThisCell %s: %s", ""),
				AFS_SERVERTHISCELL,
				FUNC8(ret));
	return ret;
    }
    if (FUNC2 (buf, sizeof(buf), f) == NULL) {
	FUNC1 (f);
	FUNC5 (context, EINVAL,
				FUNC0("No cell in ThisCell file %s", ""),
				AFS_SERVERTHISCELL);
	return EINVAL;
    }
    buf[FUNC6(buf, "\n")] = '\0';
    FUNC1(f);

    d->cell = FUNC7 (buf);
    if (d->cell == NULL) {
	FUNC5(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }

    f = FUNC3 (AFS_SERVERMAGICKRBCONF, "r");
    if (f != NULL) {
	if (FUNC2 (buf, sizeof(buf), f) == NULL) {
	    FUNC4 (d->cell);
	    d->cell = NULL;
	    FUNC1 (f);
	    FUNC5 (context, EINVAL,
				    FUNC0("No realm in ThisCell file %s", ""),
				    AFS_SERVERMAGICKRBCONF);
	    return EINVAL;
	}
	buf[FUNC6(buf, "\n")] = '\0';
	FUNC1(f);
    }
    /* uppercase */
    for (cp = buf; *cp != '\0'; cp++)
	*cp = FUNC9((unsigned char)*cp);

    d->realm = FUNC7 (buf);
    if (d->realm == NULL) {
	FUNC4 (d->cell);
	d->cell = NULL;
	FUNC5(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    return 0;
}