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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int BSIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (char const*) ; 

int FUNC11(const char *serialfile, const char *suffix, const BIGNUM *serial,
                ASN1_INTEGER **retai)
{
    char buf[1][BSIZE];
    BIO *out = NULL;
    int ret = 0;
    ASN1_INTEGER *ai = NULL;
    int j;

    if (suffix == NULL)
        j = FUNC10(serialfile);
    else
        j = FUNC10(serialfile) + FUNC10(suffix) + 1;
    if (j >= BSIZE) {
        FUNC3(bio_err, "file name too long\n");
        goto err;
    }

    if (suffix == NULL)
        FUNC8(buf[0], serialfile, BSIZE);
    else {
#ifndef OPENSSL_SYS_VMS
        j = FUNC5(buf[0], sizeof(buf[0]), "%s.%s", serialfile, suffix);
#else
        j = BIO_snprintf(buf[0], sizeof(buf[0]), "%s-%s", serialfile, suffix);
#endif
    }
    out = FUNC2(buf[0], "w");
    if (out == NULL) {
        FUNC7(bio_err);
        goto err;
    }

    if ((ai = FUNC6(serial, NULL)) == NULL) {
        FUNC3(bio_err, "error converting serial to ASN.1 format\n");
        goto err;
    }
    FUNC9(out, ai);
    FUNC4(out, "\n");
    ret = 1;
    if (retai) {
        *retai = ai;
        ai = NULL;
    }
 err:
    FUNC1(out);
    FUNC0(ai);
    return ret;
}