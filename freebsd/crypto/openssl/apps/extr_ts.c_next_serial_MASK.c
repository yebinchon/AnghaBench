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
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static ASN1_INTEGER *FUNC12(const char *serialfile)
{
    int ret = 0;
    BIO *in = NULL;
    ASN1_INTEGER *serial = NULL;
    BIGNUM *bn = NULL;

    if ((serial = FUNC1()) == NULL)
        goto err;

    if ((in = FUNC5(serialfile, "r")) == NULL) {
        FUNC10();
        FUNC6(bio_err, "Warning: could not open file %s for "
                   "reading, using serial number: 1\n", serialfile);
        if (!FUNC2(serial, 1))
            goto err;
    } else {
        char buf[1024];
        if (!FUNC11(in, serial, buf, sizeof(buf))) {
            FUNC6(bio_err, "unable to load number from %s\n",
                       serialfile);
            goto err;
        }
        if ((bn = FUNC3(serial, NULL)) == NULL)
            goto err;
        FUNC0(serial);
        serial = NULL;
        if (!FUNC7(bn, 1))
            goto err;
        if ((serial = FUNC9(bn, NULL)) == NULL)
            goto err;
    }
    ret = 1;

 err:
    if (!ret) {
        FUNC0(serial);
        serial = NULL;
    }
    FUNC4(in);
    FUNC8(bn);
    return serial;
}