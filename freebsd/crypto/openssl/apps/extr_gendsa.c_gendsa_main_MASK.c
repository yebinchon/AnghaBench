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
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORMAT_PEM ; 
 scalar_t__ OPENSSL_DSA_MAX_MODULUS_BITS ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
#define  OPT_CIPHER 135 
#define  OPT_ENGINE 134 
#define  OPT_EOF 133 
#define  OPT_ERR 132 
#define  OPT_HELP 131 
#define  OPT_OUT 130 
#define  OPT_PASSOUT 129 
#define  OPT_R_CASES 128 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC13 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gendsa_options ; 
 char* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 char* FUNC18 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC19 () ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 char** FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (char*,int /*<<< orphan*/ ) ; 

int FUNC26(int argc, char **argv)
{
    ENGINE *e = NULL;
    BIO *out = NULL, *in = NULL;
    DSA *dsa = NULL;
    const EVP_CIPHER *enc = NULL;
    char *dsaparams = NULL;
    char *outfile = NULL, *passoutarg = NULL, *passout = NULL, *prog;
    OPTION_CHOICE o;
    int ret = 1, private = 0;
    const BIGNUM *p = NULL;

    prog = FUNC18(argc, argv, gendsa_options);
    while ((o = FUNC19()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC2(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            ret = 0;
            FUNC17(gendsa_options);
            goto end;
        case OPT_OUT:
            outfile = FUNC15();
            break;
        case OPT_PASSOUT:
            passoutarg = FUNC15();
            break;
        case OPT_ENGINE:
            e = FUNC25(FUNC15(), 0);
            break;
        case OPT_R_CASES:
            if (!FUNC21(o))
                goto end;
            break;
        case OPT_CIPHER:
            if (!FUNC16(FUNC23(), &enc))
                goto end;
            break;
        }
    }
    argc = FUNC20();
    argv = FUNC22();
    private = 1;

    if (argc != 1)
        goto opthelp;
    dsaparams = *argv;

    if (!FUNC11(NULL, passoutarg, NULL, &passout)) {
        FUNC2(bio_err, "Error getting password\n");
        goto end;
    }

    in = FUNC13(dsaparams, 'r', FORMAT_PEM);
    if (in == NULL)
        goto end2;

    if ((dsa = FUNC9(in, NULL, NULL, NULL)) == NULL) {
        FUNC2(bio_err, "unable to load DSA parameter file\n");
        goto end;
    }
    FUNC0(in);
    in = NULL;

    out = FUNC14(outfile, FORMAT_PEM, private);
    if (out == NULL)
        goto end2;

    FUNC6(dsa, &p, NULL, NULL);

    if (FUNC3(p) > OPENSSL_DSA_MAX_MODULUS_BITS)
        FUNC2(bio_err,
                   "Warning: It is not recommended to use more than %d bit for DSA keys.\n"
                   "         Your key size is %d! Larger key size may behave not as expected.\n",
                   OPENSSL_DSA_MAX_MODULUS_BITS, FUNC3(p));

    FUNC2(bio_err, "Generating DSA key, %d bits\n", FUNC3(p));
    if (!FUNC5(dsa))
        goto end;

    FUNC12(private);
    if (!FUNC10(out, dsa, enc, NULL, 0, NULL, passout))
        goto end;
    ret = 0;
 end:
    if (ret != 0)
        FUNC7(bio_err);
 end2:
    FUNC0(in);
    FUNC1(out);
    FUNC4(dsa);
    FUNC24(e);
    FUNC8(passout);
    return ret;
}