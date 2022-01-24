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
typedef  int /*<<< orphan*/  RSA ;
typedef  int OPTION_CHOICE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 scalar_t__ ERR_LIB_RSA ; 
 scalar_t__ ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned long FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_ASN1RSA ; 
 int FORMAT_MSBLOB ; 
 int FORMAT_PEM ; 
 int FORMAT_PEMRSA ; 
 int FORMAT_PVK ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
#define  OPT_CHECK 149 
#define  OPT_CIPHER 148 
#define  OPT_ENGINE 147 
#define  OPT_EOF 146 
#define  OPT_ERR 145 
 int /*<<< orphan*/  OPT_FMT_ANY ; 
#define  OPT_HELP 144 
#define  OPT_IN 143 
#define  OPT_INFORM 142 
#define  OPT_MODULUS 141 
#define  OPT_NOOUT 140 
#define  OPT_OUT 139 
#define  OPT_OUTFORM 138 
#define  OPT_PASSIN 137 
#define  OPT_PASSOUT 136 
#define  OPT_PUBIN 135 
#define  OPT_PUBOUT 134 
#define  OPT_PVK_NONE 133 
#define  OPT_PVK_STRONG 132 
#define  OPT_PVK_WEAK 131 
#define  OPT_RSAPUBKEY_IN 130 
#define  OPT_RSAPUBKEY_OUT 129 
#define  OPT_TEXT 128 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ RSA_F_RSA_CHECK_KEY_EX ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/ * bio_err ; 
 int /*<<< orphan*/ * FUNC24 (char*,int,int) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 (char*,int,int,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC32 (char*,int,int,char*,int /*<<< orphan*/ *,char*) ; 
 char* FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC35 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 char* FUNC37 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC38 () ; 
 int FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (char*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rsa_options ; 
 int /*<<< orphan*/ * FUNC43 (char*,int /*<<< orphan*/ ) ; 

int FUNC44(int argc, char **argv)
{
    ENGINE *e = NULL;
    BIO *out = NULL;
    RSA *rsa = NULL;
    const EVP_CIPHER *enc = NULL;
    char *infile = NULL, *outfile = NULL, *prog;
    char *passin = NULL, *passout = NULL, *passinarg = NULL, *passoutarg = NULL;
    int i, private = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, text = 0, check = 0;
    int noout = 0, modulus = 0, pubin = 0, pubout = 0, ret = 1;
# if !defined(OPENSSL_NO_DSA) && !defined(OPENSSL_NO_RC4)
    int pvk_encr = 2;
# endif
    OPTION_CHOICE o;

    prog = FUNC37(argc, argv, rsa_options);
    while ((o = FUNC38()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC1(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC36(rsa_options);
            ret = 0;
            goto end;
        case OPT_INFORM:
            if (!FUNC35(FUNC33(), OPT_FMT_ANY, &informat))
                goto opthelp;
            break;
        case OPT_IN:
            infile = FUNC33();
            break;
        case OPT_OUTFORM:
            if (!FUNC35(FUNC33(), OPT_FMT_ANY, &outformat))
                goto opthelp;
            break;
        case OPT_OUT:
            outfile = FUNC33();
            break;
        case OPT_PASSIN:
            passinarg = FUNC33();
            break;
        case OPT_PASSOUT:
            passoutarg = FUNC33();
            break;
        case OPT_ENGINE:
            e = FUNC43(FUNC33(), 0);
            break;
        case OPT_PUBIN:
            pubin = 1;
            break;
        case OPT_PUBOUT:
            pubout = 1;
            break;
        case OPT_RSAPUBKEY_IN:
            pubin = 2;
            break;
        case OPT_RSAPUBKEY_OUT:
            pubout = 2;
            break;
        case OPT_PVK_STRONG:    /* pvk_encr:= 2 */
        case OPT_PVK_WEAK:      /* pvk_encr:= 1 */
        case OPT_PVK_NONE:      /* pvk_encr:= 0 */
# if !defined(OPENSSL_NO_DSA) && !defined(OPENSSL_NO_RC4)
            pvk_encr = (o - OPT_PVK_NONE);
# endif
            break;
        case OPT_NOOUT:
            noout = 1;
            break;
        case OPT_TEXT:
            text = 1;
            break;
        case OPT_MODULUS:
            modulus = 1;
            break;
        case OPT_CHECK:
            check = 1;
            break;
        case OPT_CIPHER:
            if (!FUNC34(FUNC40(), &enc))
                goto opthelp;
            break;
        }
    }
    argc = FUNC39();
    if (argc != 0)
        goto opthelp;

    private = (text && !pubin) || (!pubout && !noout) ? 1 : 0;

    if (!FUNC22(passinarg, passoutarg, &passin, &passout)) {
        FUNC1(bio_err, "Error getting passwords\n");
        goto end;
    }
    if (check && pubin) {
        FUNC1(bio_err, "Only private keys can be checked\n");
        goto end;
    }

    {
        EVP_PKEY *pkey;

        if (pubin) {
            int tmpformat = -1;
            if (pubin == 2) {
                if (informat == FORMAT_PEM)
                    tmpformat = FORMAT_PEMRSA;
                else if (informat == FORMAT_ASN1)
                    tmpformat = FORMAT_ASN1RSA;
            } else {
                tmpformat = informat;
            }

            pkey = FUNC32(infile, tmpformat, 1, passin, e, "Public Key");
        } else {
            pkey = FUNC31(infile, informat, 1, passin, e, "Private Key");
        }

        if (pkey != NULL)
            rsa = FUNC11(pkey);
        FUNC10(pkey);
    }

    if (rsa == NULL) {
        FUNC8(bio_err);
        goto end;
    }

    out = FUNC24(outfile, outformat, private);
    if (out == NULL)
        goto end;

    if (text) {
        FUNC23(pubin || private);
        if (!FUNC21(out, rsa, 0)) {
            FUNC41(outfile);
            FUNC8(bio_err);
            goto end;
        }
    }

    if (modulus) {
        const BIGNUM *n;
        FUNC20(rsa, &n, NULL, NULL);
        FUNC1(out, "Modulus=");
        FUNC2(out, n);
        FUNC1(out, "\n");
    }

    if (check) {
        int r = FUNC18(rsa, NULL);

        if (r == 1) {
            FUNC1(out, "RSA key ok\n");
        } else if (r == 0) {
            unsigned long err;

            while ((err = FUNC7()) != 0 &&
                   FUNC4(err) == ERR_LIB_RSA &&
                   FUNC3(err) == RSA_F_RSA_CHECK_KEY_EX &&
                   FUNC5(err) != ERR_R_MALLOC_FAILURE) {
                FUNC1(out, "RSA key error: %s\n",
                           FUNC9(err));
                FUNC6(); /* remove err from error stack */
            }
        } else if (r == -1) {
            FUNC8(bio_err);
            goto end;
        }
    }

    if (noout) {
        ret = 0;
        goto end;
    }
    FUNC1(bio_err, "writing RSA key\n");
    if (outformat == FORMAT_ASN1) {
        if (pubout || pubin) {
            if (pubout == 2)
                i = FUNC29(out, rsa);
            else
                i = FUNC30(out, rsa);
        } else {
            FUNC23(private);
            i = FUNC28(out, rsa);
        }
    } else if (outformat == FORMAT_PEM) {
        if (pubout || pubin) {
            if (pubout == 2)
                i = FUNC16(out, rsa);
            else
                i = FUNC17(out, rsa);
        } else {
            FUNC23(private);
            i = FUNC15(out, rsa,
                                            enc, NULL, 0, NULL, passout);
        }
# ifndef OPENSSL_NO_DSA
    } else if (outformat == FORMAT_MSBLOB || outformat == FORMAT_PVK) {
        EVP_PKEY *pk;
        pk = FUNC12();
        if (pk == NULL)
            goto end;

        FUNC13(pk, rsa);
        if (outformat == FORMAT_PVK) {
            if (pubin) {
                FUNC1(bio_err, "PVK form impossible with public key input\n");
                FUNC10(pk);
                goto end;
            }
            FUNC23(private);
#  ifdef OPENSSL_NO_RC4
            BIO_printf(bio_err, "PVK format not supported\n");
            EVP_PKEY_free(pk);
            goto end;
#  else
            i = FUNC25(out, pk, pvk_encr, 0, passout);
#  endif
        } else if (pubin || pubout) {
            i = FUNC27(out, pk);
        } else {
            FUNC23(private);
            i = FUNC26(out, pk);
        }
        FUNC10(pk);
# endif
    } else {
        FUNC1(bio_err, "bad output format specified for outfile\n");
        goto end;
    }
    if (i <= 0) {
        FUNC1(bio_err, "unable to write key\n");
        FUNC8(bio_err);
    } else {
        ret = 0;
    }
 end:
    FUNC42(e);
    FUNC0(out);
    FUNC19(rsa);
    FUNC14(passin);
    FUNC14(passout);
    return ret;
}