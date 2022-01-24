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
typedef  int /*<<< orphan*/  UI_METHOD ;
typedef  int /*<<< orphan*/  PW_CB_DATA ;
typedef  int /*<<< orphan*/  OSSL_STORE_SEARCH ;
typedef  int /*<<< orphan*/  OSSL_STORE_INFO ;
typedef  int /*<<< orphan*/  OSSL_STORE_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  OSSL_STORE_INFO_CERT 132 
#define  OSSL_STORE_INFO_CRL 131 
#define  OSSL_STORE_INFO_NAME 130 
#define  OSSL_STORE_INFO_PARAMS 129 
#define  OSSL_STORE_INFO_PKEY 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC29(const char *uri, const UI_METHOD *uimeth, PW_CB_DATA *uidata,
                   int expected, int criterion, OSSL_STORE_SEARCH *search,
                   int text, int noout, int recursive, int indent, BIO *out,
                   const char *prog)
{
    OSSL_STORE_CTX *store_ctx = NULL;
    int ret = 1, items = 0;

    if ((store_ctx = FUNC20(uri, uimeth, uidata, NULL, NULL))
        == NULL) {
        FUNC0(bio_err, "Couldn't open file or uri %s\n", uri);
        FUNC2(bio_err);
        return ret;
    }

    if (expected != 0) {
        if (!FUNC17(store_ctx, expected)) {
            FUNC2(bio_err);
            goto end2;
        }
    }

    if (criterion != 0) {
        if (!FUNC21(store_ctx, criterion)) {
            FUNC0(bio_err,
                       "%s: the store scheme doesn't support the given search criteria.\n",
                       prog);
            goto end2;
        }

        if (!FUNC18(store_ctx, search)) {
            FUNC2(bio_err);
            goto end2;
        }
    }

    /* From here on, we count errors, and we'll return the count at the end */
    ret = 0;

    for (;;) {
        OSSL_STORE_INFO *info = FUNC19(store_ctx);
        int type = info == NULL ? 0 : FUNC12(info);
        const char *infostr =
            info == NULL ? NULL : FUNC13(type);

        if (info == NULL) {
            if (FUNC15(store_ctx))
                break;

            if (FUNC16(store_ctx)) {
                if (recursive)
                    FUNC1();
                else
                    FUNC2(bio_err);
                ret++;
                continue;
            }

            FUNC0(bio_err,
                       "ERROR: OSSL_STORE_load() returned NULL without "
                       "eof or error indications\n");
            FUNC0(bio_err, "       This is an error in the loader\n");
            FUNC2(bio_err);
            ret++;
            break;
        }

        if (type == OSSL_STORE_INFO_NAME) {
            const char *name = FUNC8(info);
            const char *desc = FUNC9(info);
            FUNC28(indent, &bio_out, "%d: %s: %s\n", items, infostr,
                          name);
            if (desc != NULL)
                FUNC28(indent, &bio_out, "%s\n", desc);
        } else {
            FUNC28(indent, &bio_out, "%d: %s\n", items, infostr);
        }

        /*
         * Unfortunately, PEM_X509_INFO_write_bio() is sorely lacking in
         * functionality, so we must figure out how exactly to write things
         * ourselves...
         */
        switch (type) {
        case OSSL_STORE_INFO_NAME:
            if (recursive) {
                const char *suburi = FUNC8(info);
                ret += FUNC29(suburi, uimeth, uidata,
                               expected, criterion, search,
                               text, noout, recursive, indent + 2, out, prog);
            }
            break;
        case OSSL_STORE_INFO_PARAMS:
            if (text)
                FUNC3(out, FUNC10(info),
                                      0, NULL);
            if (!noout)
                FUNC22(out,
                                         FUNC10(info));
            break;
        case OSSL_STORE_INFO_PKEY:
            if (text)
                FUNC4(out, FUNC11(info),
                                       0, NULL);
            if (!noout)
                FUNC23(out, FUNC11(info),
                                         NULL, NULL, 0, NULL, NULL);
            break;
        case OSSL_STORE_INFO_CERT:
            if (text)
                FUNC27(out, FUNC6(info));
            if (!noout)
                FUNC24(out, FUNC6(info));
            break;
        case OSSL_STORE_INFO_CRL:
            if (text)
                FUNC26(out, FUNC7(info));
            if (!noout)
                FUNC25(out, FUNC7(info));
            break;
        default:
            FUNC0(bio_err, "!!! Unknown code\n");
            ret++;
            break;
        }
        items++;
        FUNC5(info);
    }
    FUNC28(indent, out, "Total found: %d\n", items);

 end2:
    if (!FUNC14(store_ctx)) {
        FUNC2(bio_err);
        ret++;
    }

    return ret;
}