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
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int DEFBITS ; 
 int DH_CHECK_INVALID_J_VALUE ; 
 int DH_CHECK_INVALID_Q_VALUE ; 
 int DH_CHECK_P_NOT_PRIME ; 
 int DH_CHECK_P_NOT_SAFE_PRIME ; 
 int DH_CHECK_Q_NOT_PRIME ; 
 int DH_NOT_SUITABLE_GENERATOR ; 
 int DH_UNABLE_TO_CHECK_GENERATOR ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_PEM ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*) ; 
#define  OPT_2 143 
#define  OPT_5 142 
#define  OPT_C 141 
#define  OPT_CHECK 140 
#define  OPT_DSAPARAM 139 
#define  OPT_ENGINE 138 
#define  OPT_EOF 137 
#define  OPT_ERR 136 
 int /*<<< orphan*/  OPT_FMT_PEMDER ; 
#define  OPT_HELP 135 
#define  OPT_IN 134 
#define  OPT_INFORM 133 
#define  OPT_NOOUT 132 
#define  OPT_OUT 131 
#define  OPT_OUTFORM 130 
#define  OPT_R_CASES 129 
#define  OPT_TEXT 128 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC26 (int,char*) ; 
 int /*<<< orphan*/ * bio_err ; 
 int /*<<< orphan*/ * FUNC27 (char*,char,int) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dh_cb ; 
 int /*<<< orphan*/  dhparam_options ; 
 int FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 char* FUNC36 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (char*,int*) ; 
 int FUNC38 () ; 
 int FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 (int) ; 
 char** FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC44 (char*,int /*<<< orphan*/ ) ; 

int FUNC45(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL;
    DH *dh = NULL;
    char *infile = NULL, *outfile = NULL, *prog;
    ENGINE *e = NULL;
#ifndef OPENSSL_NO_DSA
    int dsaparam = 0;
#endif
    int i, text = 0, C = 0, ret = 1, num = 0, g = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, check = 0, noout = 0;
    OPTION_CHOICE o;

    prog = FUNC36(argc, argv, dhparam_options);
    while ((o = FUNC38()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC2(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC35(dhparam_options);
            ret = 0;
            goto end;
        case OPT_INFORM:
            if (!FUNC34(FUNC33(), OPT_FMT_PEMDER, &informat))
                goto opthelp;
            break;
        case OPT_OUTFORM:
            if (!FUNC34(FUNC33(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case OPT_IN:
            infile = FUNC33();
            break;
        case OPT_OUT:
            outfile = FUNC33();
            break;
        case OPT_ENGINE:
            e = FUNC44(FUNC33(), 0);
            break;
        case OPT_CHECK:
            check = 1;
            break;
        case OPT_TEXT:
            text = 1;
            break;
        case OPT_DSAPARAM:
#ifndef OPENSSL_NO_DSA
            dsaparam = 1;
#endif
            break;
        case OPT_C:
            C = 1;
            break;
        case OPT_2:
            g = 2;
            break;
        case OPT_5:
            g = 5;
            break;
        case OPT_NOOUT:
            noout = 1;
            break;
        case OPT_R_CASES:
            if (!FUNC40(o))
                goto end;
            break;
        }
    }
    argc = FUNC39();
    argv = FUNC41();

    if (argv[0] != NULL && (!FUNC37(argv[0], &num) || num <= 0))
        goto end;

    if (g && !num)
        num = DEFBITS;

# ifndef OPENSSL_NO_DSA
    if (dsaparam && g) {
        FUNC2(bio_err,
                   "generator may not be chosen for DSA parameters\n");
        goto end;
    }
# endif

    out = FUNC27(outfile, 'w', outformat);
    if (out == NULL)
        goto end;

    /* DH parameters */
    if (num && !g)
        g = 2;

    if (num) {

        BN_GENCB *cb;
        cb = FUNC5();
        if (cb == NULL) {
            FUNC20(bio_err);
            goto end;
        }

        FUNC6(cb, dh_cb, bio_err);

# ifndef OPENSSL_NO_DSA
        if (dsaparam) {
            DSA *dsa = FUNC19();

            FUNC2(bio_err,
                       "Generating DSA parameters, %d bit long prime\n", num);
            if (dsa == NULL
                || !FUNC18(dsa, num, NULL, 0, NULL, NULL,
                                               cb)) {
                FUNC17(dsa);
                FUNC4(cb);
                FUNC20(bio_err);
                goto end;
            }

            dh = FUNC16(dsa);
            FUNC17(dsa);
            if (dh == NULL) {
                FUNC4(cb);
                FUNC20(bio_err);
                goto end;
            }
        } else
# endif
        {
            dh = FUNC13();
            FUNC2(bio_err,
                       "Generating DH parameters, %d bit long safe prime, generator %d\n",
                       num, g);
            FUNC2(bio_err, "This is going to take a long time\n");
            if (dh == NULL || !FUNC10(dh, num, g, cb)) {
                FUNC4(cb);
                FUNC20(bio_err);
                goto end;
            }
        }

        FUNC4(cb);
    } else {

        in = FUNC27(infile, 'r', informat);
        if (in == NULL)
            goto end;

# ifndef OPENSSL_NO_DSA
        if (dsaparam) {
            DSA *dsa;

            if (informat == FORMAT_ASN1)
                dsa = FUNC30(in, NULL);
            else                /* informat == FORMAT_PEM */
                dsa = FUNC23(in, NULL, NULL, NULL);

            if (dsa == NULL) {
                FUNC2(bio_err, "unable to load DSA parameters\n");
                FUNC20(bio_err);
                goto end;
            }

            dh = FUNC16(dsa);
            FUNC17(dsa);
            if (dh == NULL) {
                FUNC20(bio_err);
                goto end;
            }
        } else
# endif
        {
            if (informat == FORMAT_ASN1) {
                /*
                 * We have no PEM header to determine what type of DH params it
                 * is. We'll just try both.
                 */
                dh = FUNC28(in, NULL);
                /* BIO_reset() returns 0 for success for file BIOs only!!! */
                if (dh == NULL && FUNC3(in) == 0)
                    dh = FUNC29(in, NULL);
            } else {
                /* informat == FORMAT_PEM */
                dh = FUNC22(in, NULL, NULL, NULL);
            }

            if (dh == NULL) {
                FUNC2(bio_err, "unable to load DH parameters\n");
                FUNC20(bio_err);
                goto end;
            }
        }

        /* dh != NULL */
    }

    if (text) {
        FUNC15(out, dh);
    }

    if (check) {
        if (!FUNC8(dh, &i)) {
            FUNC20(bio_err);
            goto end;
        }
        if (i & DH_CHECK_P_NOT_PRIME)
            FUNC2(bio_err, "WARNING: p value is not prime\n");
        if (i & DH_CHECK_P_NOT_SAFE_PRIME)
            FUNC2(bio_err, "WARNING: p value is not a safe prime\n");
        if (i & DH_CHECK_Q_NOT_PRIME)
            FUNC2(bio_err, "WARNING: q value is not a prime\n");
        if (i & DH_CHECK_INVALID_Q_VALUE)
            FUNC2(bio_err, "WARNING: q value is invalid\n");
        if (i & DH_CHECK_INVALID_J_VALUE)
            FUNC2(bio_err, "WARNING: j value is invalid\n");
        if (i & DH_UNABLE_TO_CHECK_GENERATOR)
            FUNC2(bio_err,
                       "WARNING: unable to check the generator value\n");
        if (i & DH_NOT_SUITABLE_GENERATOR)
            FUNC2(bio_err, "WARNING: the g value is not a generator\n");
        if (i == 0)
            FUNC2(bio_err, "DH parameters appear to be ok.\n");
        if (num != 0 && i != 0) {
            /*
             * We have generated parameters but DH_check() indicates they are
             * invalid! This should never happen!
             */
            FUNC2(bio_err, "ERROR: Invalid parameters generated\n");
            goto end;
        }
    }
    if (C) {
        unsigned char *data;
        int len, bits;
        const BIGNUM *pbn, *gbn;

        len = FUNC14(dh);
        bits = FUNC7(dh);
        FUNC11(dh, &pbn, NULL, &gbn);
        data = FUNC26(len, "print a BN");

        FUNC2(out, "static DH *get_dh%d(void)\n{\n", bits);
        FUNC42(out, pbn, "dhp", bits, data);
        FUNC42(out, gbn, "dhg", bits, data);
        FUNC2(out, "    DH *dh = DH_new();\n"
                        "    BIGNUM *p, *g;\n"
                        "\n"
                        "    if (dh == NULL)\n"
                        "        return NULL;\n");
        FUNC2(out, "    p = BN_bin2bn(dhp_%d, sizeof(dhp_%d), NULL);\n",
                   bits, bits);
        FUNC2(out, "    g = BN_bin2bn(dhg_%d, sizeof(dhg_%d), NULL);\n",
                   bits, bits);
        FUNC2(out, "    if (p == NULL || g == NULL\n"
                        "            || !DH_set0_pqg(dh, p, NULL, g)) {\n"
                        "        DH_free(dh);\n"
                        "        BN_free(p);\n"
                        "        BN_free(g);\n"
                        "        return NULL;\n"
                        "    }\n");
        if (FUNC12(dh) > 0)
            FUNC2(out,
                        "    if (!DH_set_length(dh, %ld)) {\n"
                        "        DH_free(dh);\n"
                        "        return NULL;\n"
                        "    }\n", FUNC12(dh));
        FUNC2(out, "    return dh;\n}\n");
        FUNC21(data);
    }

    if (!noout) {
        const BIGNUM *q;
        FUNC11(dh, NULL, &q, NULL);
        if (outformat == FORMAT_ASN1) {
            if (q != NULL)
                i = FUNC32(out, dh);
            else
                i = FUNC31(out, dh);
        } else if (q != NULL) {
            i = FUNC25(out, dh);
        } else {
            i = FUNC24(out, dh);
        }
        if (!i) {
            FUNC2(bio_err, "unable to write DH parameters\n");
            FUNC20(bio_err);
            goto end;
        }
    }
    ret = 0;
 end:
    FUNC0(in);
    FUNC1(out);
    FUNC9(dh);
    FUNC43(e);
    return ret;
}