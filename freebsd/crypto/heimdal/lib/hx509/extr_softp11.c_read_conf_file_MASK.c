#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int app_error_fatal; } ;
struct TYPE_4__ {TYPE_1__ flags; int /*<<< orphan*/ * logfile; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CK_USER_TYPE ;
typedef  int /*<<< orphan*/  CK_RV ;

/* Variables and functions */
 int /*<<< orphan*/  CKR_GENERAL_ERROR ; 
 int /*<<< orphan*/  CKR_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 void* FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__ soft_token ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 size_t FUNC9 (char*,char*) ; 
 char* FUNC10 (char*,char*,char**) ; 

__attribute__((used)) static CK_RV
FUNC11(const char *fn, CK_USER_TYPE userType, const char *pin)
{
    char buf[1024], *type, *s, *p;
    FILE *f;
    CK_RV ret = CKR_OK;
    CK_RV failed = CKR_OK;

    if (fn == NULL) {
        FUNC6("Can't open configuration file.  No file specified\n");
        return CKR_GENERAL_ERROR;
    }

    f = FUNC3(fn, "r");
    if (f == NULL) {
	FUNC6("can't open configuration file %s\n", fn);
	return CKR_GENERAL_ERROR;
    }
    FUNC5(f);

    while(FUNC2(buf, sizeof(buf), f) != NULL) {
	buf[FUNC9(buf, "\n")] = '\0';

	FUNC6("line: %s\n", buf);

	p = buf;
	while (FUNC4((unsigned char)*p))
	    p++;
	if (*p == '#')
	    continue;
	while (FUNC4((unsigned char)*p))
	    p++;

	s = NULL;
	type = FUNC10(p, "\t", &s);
	if (type == NULL)
	    continue;

	if (FUNC7("certificate", type) == 0) {
	    char *cert, *id, *label;

	    id = FUNC10(NULL, "\t", &s);
	    if (id == NULL) {
		FUNC6("no id\n");
		continue;
	    }
	    FUNC6("id: %s\n", id);
	    label = FUNC10(NULL, "\t", &s);
	    if (label == NULL) {
		FUNC6("no label\n");
		continue;
	    }
	    cert = FUNC10(NULL, "\t", &s);
	    if (cert == NULL) {
		FUNC6("no certfiicate store\n");
		continue;
	    }

	    FUNC6("adding: %s: %s in file %s\n", id, label, cert);

	    ret = FUNC0(cert, pin, id, label);
	    if (ret)
		failed = ret;
	} else if (FUNC7("debug", type) == 0) {
	    char *name;

	    name = FUNC10(NULL, "\t", &s);
	    if (name == NULL) {
		FUNC6("no filename\n");
		continue;
	    }

	    if (soft_token.logfile)
		FUNC1(soft_token.logfile);

	    if (FUNC7(name, "stdout") == 0)
		soft_token.logfile = stdout;
	    else {
		soft_token.logfile = FUNC3(name, "a");
		if (soft_token.logfile)
		    FUNC5(soft_token.logfile);
	    }
	    if (soft_token.logfile == NULL)
		FUNC6("failed to open file: %s\n", name);

	} else if (FUNC7("app-fatal", type) == 0) {
	    char *name;

	    name = FUNC10(NULL, "\t", &s);
	    if (name == NULL) {
		FUNC6("argument to app-fatal\n");
		continue;
	    }

	    if (FUNC8(name, "true") == 0 || FUNC8(name, "on") == 0)
		soft_token.flags.app_error_fatal = 1;
	    else if (FUNC8(name, "false") == 0 || FUNC8(name, "off") == 0)
		soft_token.flags.app_error_fatal = 0;
	    else
		FUNC6("unknown app-fatal: %s\n", name);

	} else {
	    FUNC6("unknown type: %s\n", type);
	}
    }

    FUNC1(f);

    return failed;
}