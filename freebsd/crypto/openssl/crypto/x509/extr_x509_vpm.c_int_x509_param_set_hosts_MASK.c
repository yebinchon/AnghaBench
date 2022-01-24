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
struct TYPE_3__ {int /*<<< orphan*/ * hosts; } ;
typedef  TYPE_1__ X509_VERIFY_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,size_t) ; 
 int SET_HOST ; 
 scalar_t__ FUNC2 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  str_free ; 
 size_t FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(X509_VERIFY_PARAM *vpm, int mode,
                                    const char *name, size_t namelen)
{
    char *copy;

    /*
     * Refuse names with embedded NUL bytes, except perhaps as final byte.
     * XXX: Do we need to push an error onto the error stack?
     */
    if (namelen == 0 || name == NULL)
        namelen = name ? FUNC8(name) : 0;
    else if (name && FUNC2(name, '\0', namelen > 1 ? namelen - 1 : namelen))
        return 0;
    if (namelen > 0 && name[namelen - 1] == '\0')
        --namelen;

    if (mode == SET_HOST) {
        FUNC6(vpm->hosts, str_free);
        vpm->hosts = NULL;
    }
    if (name == NULL || namelen == 0)
        return 1;

    copy = FUNC1(name, namelen);
    if (copy == NULL)
        return 0;

    if (vpm->hosts == NULL &&
        (vpm->hosts = FUNC4()) == NULL) {
        FUNC0(copy);
        return 0;
    }

    if (!FUNC7(vpm->hosts, copy)) {
        FUNC0(copy);
        if (FUNC5(vpm->hosts) == 0) {
            FUNC3(vpm->hosts);
            vpm->hosts = NULL;
        }
        return 0;
    }

    return 1;
}