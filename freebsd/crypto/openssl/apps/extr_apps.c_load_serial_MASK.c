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
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BIGNUM *FUNC11(const char *serialfile, int create, ASN1_INTEGER **retai)
{
    BIO *in = NULL;
    BIGNUM *ret = NULL;
    char buf[1024];
    ASN1_INTEGER *ai = NULL;

    ai = FUNC1();
    if (ai == NULL)
        goto err;

    in = FUNC4(serialfile, "r");
    if (in == NULL) {
        if (!create) {
            FUNC9(serialfile);
            goto err;
        }
        FUNC7();
        ret = FUNC6();
        if (ret == NULL || !FUNC10(ret, ai))
            FUNC5(bio_err, "Out of memory\n");
    } else {
        if (!FUNC8(in, ai, buf, 1024)) {
            FUNC5(bio_err, "unable to load number from %s\n",
                       serialfile);
            goto err;
        }
        ret = FUNC2(ai, NULL);
        if (ret == NULL) {
            FUNC5(bio_err,
                       "error converting number from bin to BIGNUM\n");
            goto err;
        }
    }

    if (ret && retai) {
        *retai = ai;
        ai = NULL;
    }
 err:
    FUNC3(in);
    FUNC0(ai);
    return ret;
}