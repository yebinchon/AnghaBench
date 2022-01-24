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
typedef  int OPTION_CHOICE ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FORMAT_PEM ; 
#define  OPT_CHECK 136 
#define  OPT_ENGINE 135 
#define  OPT_EOF 134 
#define  OPT_ERR 133 
#define  OPT_HELP 132 
#define  OPT_IN 131 
#define  OPT_NOOUT 130 
#define  OPT_OUT 129 
#define  OPT_TEXT 128 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * bio_err ; 
 int /*<<< orphan*/ * FUNC14 (char*,char,int /*<<< orphan*/ ) ; 
 char* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 char* FUNC17 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC18 () ; 
 int FUNC19 () ; 
 int /*<<< orphan*/  pkeyparam_options ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (char*,int /*<<< orphan*/ ) ; 

int FUNC22(int argc, char **argv)
{
    ENGINE *e = NULL;
    BIO *in = NULL, *out = NULL;
    EVP_PKEY *pkey = NULL;
    int text = 0, noout = 0, ret = 1, check = 0;
    OPTION_CHOICE o;
    char *infile = NULL, *outfile = NULL, *prog;

    prog = FUNC17(argc, argv, pkeyparam_options);
    while ((o = FUNC18()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC2(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC16(pkeyparam_options);
            ret = 0;
            goto end;
        case OPT_IN:
            infile = FUNC15();
            break;
        case OPT_OUT:
            outfile = FUNC15();
            break;
        case OPT_ENGINE:
            e = FUNC21(FUNC15(), 0);
            break;
        case OPT_TEXT:
            text = 1;
            break;
        case OPT_NOOUT:
            noout = 1;
            break;
        case OPT_CHECK:
            check = 1;
            break;
        }
    }
    argc = FUNC19();
    if (argc != 0)
        goto opthelp;

    in = FUNC14(infile, 'r', FORMAT_PEM);
    if (in == NULL)
        goto end;
    out = FUNC14(outfile, 'w', FORMAT_PEM);
    if (out == NULL)
        goto end;
    pkey = FUNC12(in, NULL);
    if (pkey == NULL) {
        FUNC2(bio_err, "Error reading parameters\n");
        FUNC5(bio_err);
        goto end;
    }

    if (check) {
        int r;
        EVP_PKEY_CTX *ctx;

        ctx = FUNC8(pkey, e);
        if (ctx == NULL) {
            FUNC5(bio_err);
            goto end;
        }

        r = FUNC10(ctx);

        if (r == 1) {
            FUNC2(out, "Parameters are valid\n");
        } else {
            /*
             * Note: at least for RSA keys if this function returns
             * -1, there will be no error reasons.
             */
            unsigned long err;

            FUNC2(out, "Parameters are invalid\n");

            while ((err = FUNC4()) != 0) {
                FUNC2(out, "Detailed error: %s\n",
                           FUNC6(err));
                FUNC3(); /* remove err from error stack */
            }
        }
        FUNC7(ctx);
    }

    if (!noout)
        FUNC13(out, pkey);

    if (text)
        FUNC11(out, pkey, 0, NULL);

    ret = 0;

 end:
    FUNC9(pkey);
    FUNC20(e);
    FUNC1(out);
    FUNC0(in);

    return ret;
}