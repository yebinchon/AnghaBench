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
typedef  int /*<<< orphan*/  X509_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int NID_undef ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,long,unsigned char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

X509_NAME *FUNC9(const char *cp, long chtype, int canmulti)
{
    int nextismulti = 0;
    char *work;
    X509_NAME *n;

    if (*cp++ != '/') {
        FUNC0(bio_err,
                   "name is expected to be in the format "
                   "/type0=value0/type1=value1/type2=... where characters may "
                   "be escaped by \\. This name is not in that format: '%s'\n",
                   --cp);
        return NULL;
    }

    n = FUNC6();
    if (n == NULL)
        return NULL;
    work = FUNC3(cp);
    if (work == NULL)
        goto err;

    while (*cp) {
        char *bp = work;
        char *typestr = bp;
        unsigned char *valstr;
        int nid;
        int ismulti = nextismulti;
        nextismulti = 0;

        /* Collect the type */
        while (*cp && *cp != '=')
            *bp++ = *cp++;
        if (*cp == '\0') {
            FUNC0(bio_err,
                    "%s: Hit end of string before finding the equals.\n",
                    FUNC7());
            goto err;
        }
        *bp++ = '\0';
        ++cp;

        /* Collect the value. */
        valstr = (unsigned char *)bp;
        for (; *cp && *cp != '/'; *bp++ = *cp++) {
            if (canmulti && *cp == '+') {
                nextismulti = 1;
                break;
            }
            if (*cp == '\\' && *++cp == '\0') {
                FUNC0(bio_err,
                        "%s: escape character at end of string\n",
                        FUNC7());
                goto err;
            }
        }
        *bp++ = '\0';

        /* If not at EOS (must be + or /), move forward. */
        if (*cp)
            ++cp;

        /* Parse */
        nid = FUNC1(typestr);
        if (nid == NID_undef) {
            FUNC0(bio_err, "%s: Skipping unknown attribute \"%s\"\n",
                      FUNC7(), typestr);
            continue;
        }
        if (*valstr == '\0') {
            FUNC0(bio_err,
                       "%s: No value provided for Subject Attribute %s, skipped\n",
                       FUNC7(), typestr);
            continue;
        }
        if (!FUNC4(n, nid, chtype,
                                        valstr, FUNC8((char *)valstr),
                                        -1, ismulti ? -1 : 0))
            goto err;
    }

    FUNC2(work);
    return n;

 err:
    FUNC5(n);
    FUNC2(work);
    return NULL;
}