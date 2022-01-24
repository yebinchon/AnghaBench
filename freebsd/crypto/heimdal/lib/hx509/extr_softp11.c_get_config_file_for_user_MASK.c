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
struct passwd {char* pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_APPDATA ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char*) ; 
 char* FUNC3 (char*) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static char *
FUNC8(void)
{
    char *fn = NULL;

#ifndef _WIN32
    char *home = NULL;

    if (!FUNC6()) {
        fn = FUNC3("SOFTPKCS11RC");
        if (fn)
            fn = FUNC7(fn);
        home = FUNC3("HOME");
    }
    if (fn == NULL && home == NULL) {
        struct passwd *pw = FUNC4(FUNC5());
        if(pw != NULL)
            home = pw->pw_dir;
    }
    if (fn == NULL) {
        if (home)
            FUNC2(&fn, "%s/.soft-token.rc", home);
        else
            fn = FUNC7("/etc/soft-token.rc");
    }
#else  /* Windows */

    char appdatafolder[MAX_PATH];

    fn = getenv("SOFTPKCS11RC");

    /* Retrieve the roaming AppData folder for the current user.  The
       current user is the user account represented by the current
       thread token. */

    if (fn == NULL &&
        SUCCEEDED(SHGetFolderPath(NULL, CSIDL_APPDATA, NULL, SHGFP_TYPE_CURRENT, appdatafolder))) {

        asprintf(&fn, "%s\\.soft-token.rc", appdatafolder);
    }

#endif  /* _WIN32 */

    return fn;
}