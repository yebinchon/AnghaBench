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
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  X509_OBJECT ;
typedef  int /*<<< orphan*/  X509_LOOKUP ;
typedef  int /*<<< orphan*/  X509_CRL ;
typedef  int OPTION_CHOICE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int FORMAT_ASN1 ; 
 int FORMAT_PEM ; 
 int /*<<< orphan*/  NID_crl_number ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  OPT_BADSIG 154 
#define  OPT_CAFILE 153 
#define  OPT_CAPATH 152 
#define  OPT_CRLNUMBER 151 
#define  OPT_EOF 150 
#define  OPT_ERR 149 
#define  OPT_FINGERPRINT 148 
 int /*<<< orphan*/  OPT_FMT_PEMDER ; 
#define  OPT_GENDELTA 147 
#define  OPT_HASH 146 
#define  OPT_HASH_OLD 145 
#define  OPT_HELP 144 
#define  OPT_IN 143 
#define  OPT_INFORM 142 
#define  OPT_ISSUER 141 
#define  OPT_KEY 140 
#define  OPT_KEYFORM 139 
#define  OPT_LASTUPDATE 138 
#define  OPT_MD 137 
#define  OPT_NAMEOPT 136 
#define  OPT_NEXTUPDATE 135 
#define  OPT_NOCAFILE 134 
#define  OPT_NOCAPATH 133 
#define  OPT_NOOUT 132 
#define  OPT_OUT 131 
#define  OPT_OUTFORM 130 
#define  OPT_TEXT 129 
#define  OPT_VERIFY 128 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  X509_LU_X509 ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 () ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC33 (char*,char,int) ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  crl_options ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC38 (char*,int) ; 
 int /*<<< orphan*/ * FUNC39 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 void* FUNC40 () ; 
 int /*<<< orphan*/  FUNC41 (void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 char* FUNC43 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int FUNC45 () ; 
 int FUNC46 () ; 
 int /*<<< orphan*/  FUNC47 () ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (void*) ; 
 int /*<<< orphan*/ * FUNC50 (char const*,char const*,int,int) ; 

int FUNC51(int argc, char **argv)
{
    X509_CRL *x = NULL;
    BIO *out = NULL;
    X509_STORE *store = NULL;
    X509_STORE_CTX *ctx = NULL;
    X509_LOOKUP *lookup = NULL;
    X509_OBJECT *xobj = NULL;
    EVP_PKEY *pkey;
    const EVP_MD *digest = FUNC8();
    char *infile = NULL, *outfile = NULL, *crldiff = NULL, *keyfile = NULL;
    const char *CAfile = NULL, *CApath = NULL, *prog;
    OPTION_CHOICE o;
    int hash = 0, issuer = 0, lastupdate = 0, nextupdate = 0, noout = 0;
    int informat = FORMAT_PEM, outformat = FORMAT_PEM, keyformat = FORMAT_PEM;
    int ret = 1, num = 0, badsig = 0, fingerprint = 0, crlnumber = 0;
    int text = 0, do_ver = 0, noCAfile = 0, noCApath = 0;
    int i;
#ifndef OPENSSL_NO_MD5
    int hash_old = 0;
#endif

    prog = FUNC43(argc, argv, crl_options);
    while ((o = FUNC45()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC3(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC42(crl_options);
            ret = 0;
            goto end;
        case OPT_INFORM:
            if (!FUNC41(FUNC40(), OPT_FMT_PEMDER, &informat))
                goto opthelp;
            break;
        case OPT_IN:
            infile = FUNC40();
            break;
        case OPT_OUTFORM:
            if (!FUNC41(FUNC40(), OPT_FMT_PEMDER, &outformat))
                goto opthelp;
            break;
        case OPT_OUT:
            outfile = FUNC40();
            break;
        case OPT_KEYFORM:
            if (!FUNC41(FUNC40(), OPT_FMT_PEMDER, &keyformat))
                goto opthelp;
            break;
        case OPT_KEY:
            keyfile = FUNC40();
            break;
        case OPT_GENDELTA:
            crldiff = FUNC40();
            break;
        case OPT_CAPATH:
            CApath = FUNC40();
            do_ver = 1;
            break;
        case OPT_CAFILE:
            CAfile = FUNC40();
            do_ver = 1;
            break;
        case OPT_NOCAPATH:
            noCApath =  1;
            break;
        case OPT_NOCAFILE:
            noCAfile =  1;
            break;
        case OPT_HASH_OLD:
#ifndef OPENSSL_NO_MD5
            hash_old = ++num;
#endif
            break;
        case OPT_VERIFY:
            do_ver = 1;
            break;
        case OPT_TEXT:
            text = 1;
            break;
        case OPT_HASH:
            hash = ++num;
            break;
        case OPT_ISSUER:
            issuer = ++num;
            break;
        case OPT_LASTUPDATE:
            lastupdate = ++num;
            break;
        case OPT_NEXTUPDATE:
            nextupdate = ++num;
            break;
        case OPT_NOOUT:
            noout = ++num;
            break;
        case OPT_FINGERPRINT:
            fingerprint = ++num;
            break;
        case OPT_CRLNUMBER:
            crlnumber = ++num;
            break;
        case OPT_BADSIG:
            badsig = 1;
            break;
        case OPT_NAMEOPT:
            if (!FUNC49(FUNC40()))
                goto opthelp;
            break;
        case OPT_MD:
            if (!FUNC44(FUNC47(), &digest))
                goto opthelp;
        }
    }
    argc = FUNC46();
    if (argc != 0)
        goto opthelp;

    x = FUNC38(infile, informat);
    if (x == NULL)
        goto end;

    if (do_ver) {
        if ((store = FUNC50(CAfile, CApath, noCAfile, noCApath)) == NULL)
            goto end;
        lookup = FUNC30(store, FUNC21());
        if (lookup == NULL)
            goto end;
        ctx = FUNC29();
        if (ctx == NULL || !FUNC28(ctx, store, NULL, NULL)) {
            FUNC3(bio_err, "Error initialising X509 store\n");
            goto end;
        }

        xobj = FUNC27(ctx, X509_LU_X509,
                                                 FUNC18(x));
        if (xobj == NULL) {
            FUNC3(bio_err, "Error getting CRL issuer certificate\n");
            goto end;
        }
        pkey = FUNC32(FUNC25(xobj));
        FUNC24(xobj);
        if (!pkey) {
            FUNC3(bio_err, "Error getting CRL issuer public key\n");
            goto end;
        }
        i = FUNC20(x, pkey);
        FUNC7(pkey);
        if (i < 0)
            goto end;
        if (i == 0)
            FUNC3(bio_err, "verify failure\n");
        else
            FUNC3(bio_err, "verify OK\n");
    }

    if (crldiff) {
        X509_CRL *newcrl, *delta;
        if (!keyfile) {
            FUNC4(bio_err, "Missing CRL signing key\n");
            goto end;
        }
        newcrl = FUNC38(crldiff, informat);
        if (!newcrl)
            goto end;
        pkey = FUNC39(keyfile, keyformat, 0, NULL, NULL, "CRL signing key");
        if (!pkey) {
            FUNC13(newcrl);
            goto end;
        }
        delta = FUNC11(x, newcrl, pkey, digest, 0);
        FUNC13(newcrl);
        FUNC7(pkey);
        if (delta) {
            FUNC13(x);
            x = delta;
        } else {
            FUNC4(bio_err, "Error creating delta CRL\n");
            goto end;
        }
    }

    if (badsig) {
        const ASN1_BIT_STRING *sig;

        FUNC16(x, &sig, NULL);
        FUNC34(sig);
    }

    if (num) {
        for (i = 1; i <= num; i++) {
            if (issuer == i) {
                FUNC48(bio_out, "issuer=", FUNC18(x),
                           FUNC35());
            }
            if (crlnumber == i) {
                ASN1_INTEGER *crlnum;
                crlnum = FUNC17(x, NID_crl_number, NULL, NULL);
                FUNC3(bio_out, "crlNumber=");
                if (crlnum) {
                    FUNC36(bio_out, crlnum);
                    FUNC0(crlnum);
                } else
                    FUNC4(bio_out, "<NONE>");
                FUNC3(bio_out, "\n");
            }
            if (hash == i) {
                FUNC3(bio_out, "%08lx\n",
                           FUNC22(FUNC18(x)));
            }
#ifndef OPENSSL_NO_MD5
            if (hash_old == i) {
                FUNC3(bio_out, "%08lx\n",
                           FUNC23(FUNC18(x)));
            }
#endif
            if (lastupdate == i) {
                FUNC3(bio_out, "lastUpdate=");
                FUNC1(bio_out, FUNC14(x));
                FUNC3(bio_out, "\n");
            }
            if (nextupdate == i) {
                FUNC3(bio_out, "nextUpdate=");
                if (FUNC15(x))
                    FUNC1(bio_out, FUNC15(x));
                else
                    FUNC3(bio_out, "NONE");
                FUNC3(bio_out, "\n");
            }
            if (fingerprint == i) {
                int j;
                unsigned int n;
                unsigned char md[EVP_MAX_MD_SIZE];

                if (!FUNC12(x, digest, md, &n)) {
                    FUNC3(bio_err, "out of memory\n");
                    goto end;
                }
                FUNC3(bio_out, "%s Fingerprint=",
                           FUNC9(FUNC6(digest)));
                for (j = 0; j < (int)n; j++) {
                    FUNC3(bio_out, "%02X%c", md[j], (j + 1 == (int)n)
                               ? '\n' : ':');
                }
            }
        }
    }
    out = FUNC33(outfile, 'w', outformat);
    if (out == NULL)
        goto end;

    if (text)
        FUNC19(out, x, FUNC35());

    if (noout) {
        ret = 0;
        goto end;
    }

    if (outformat == FORMAT_ASN1)
        i = (int)FUNC37(out, x);
    else
        i = FUNC10(out, x);
    if (!i) {
        FUNC3(bio_err, "unable to write CRL\n");
        goto end;
    }
    ret = 0;

 end:
    if (ret != 0)
        FUNC5(bio_err);
    FUNC2(out);
    FUNC13(x);
    FUNC26(ctx);
    FUNC31(store);
    return ret;
}