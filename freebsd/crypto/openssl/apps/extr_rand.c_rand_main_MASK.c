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
typedef  int OPTION_CHOICE ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FORMAT_BASE64 ; 
 int FORMAT_BINARY ; 
 int FORMAT_TEXT ; 
#define  OPT_BASE64 135 
#define  OPT_ENGINE 134 
#define  OPT_EOF 133 
#define  OPT_ERR 132 
#define  OPT_HELP 131 
#define  OPT_HEX 130 
#define  OPT_OUT 129 
#define  OPT_R_CASES 128 
 int FUNC9 (unsigned char*,int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC10 (char*,char,int) ; 
 char* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int*) ; 
 int FUNC15 () ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 char** FUNC18 () ; 
 int /*<<< orphan*/  rand_options ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (char*,int /*<<< orphan*/ ) ; 

int FUNC21(int argc, char **argv)
{
    ENGINE *e = NULL;
    BIO *out = NULL;
    char *outfile = NULL, *prog;
    OPTION_CHOICE o;
    int format = FORMAT_BINARY, i, num = -1, r, ret = 1;

    prog = FUNC13(argc, argv, rand_options);
    while ((o = FUNC15()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
 opthelp:
            FUNC4(&bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC12(rand_options);
            ret = 0;
            goto end;
        case OPT_OUT:
            outfile = FUNC11();
            break;
        case OPT_ENGINE:
            e = FUNC20(FUNC11(), 0);
            break;
        case OPT_R_CASES:
            if (!FUNC17(o))
                goto end;
            break;
        case OPT_BASE64:
            format = FORMAT_BASE64;
            break;
        case OPT_HEX:
            format = FORMAT_TEXT;
            break;
        }
    }
    argc = FUNC16();
    argv = FUNC18();
    if (argc == 1) {
        if (!FUNC14(argv[0], &num) || num <= 0)
            goto end;
    } else if (argc > 0) {
        FUNC4(&bio_err, "Extra arguments given.\n");
        goto opthelp;
    }

    out = FUNC10(outfile, 'w', format);
    if (out == NULL)
        goto end;

    if (format == FORMAT_BASE64) {
        BIO *b64 = FUNC3(FUNC0());
        if (b64 == NULL)
            goto end;
        out = FUNC5(b64, out);
    }

    while (num > 0) {
        unsigned char buf[4096];
        int chunk;

        chunk = num;
        if (chunk > (int)sizeof(buf))
            chunk = sizeof(buf);
        r = FUNC9(buf, chunk);
        if (r <= 0)
            goto end;
        if (format != FORMAT_TEXT) {
            if (FUNC7(out, buf, chunk) != chunk)
                goto end;
        } else {
            for (i = 0; i < chunk; i++)
                if (FUNC4(out, "%02x", buf[i]) != 2)
                    goto end;
        }
        num -= chunk;
    }
    if (format == FORMAT_TEXT)
        FUNC6(out, "\n");
    if (FUNC1(out) <= 0)
        goto end;

    ret = 0;

 end:
    if (ret != 0)
        FUNC8(bio_err);
    FUNC19(e);
    FUNC2(out);
    return ret;
}