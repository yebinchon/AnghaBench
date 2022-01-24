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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
#define  OPT_BITS 135 
#define  OPT_CHECKS 134 
#define  OPT_EOF 133 
#define  OPT_ERR 132 
#define  OPT_GENERATE 131 
#define  OPT_HELP 130 
#define  OPT_HEX 129 
#define  OPT_SAFE 128 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC15 () ; 
 int FUNC16 () ; 
 char** FUNC17 () ; 
 int /*<<< orphan*/  prime_options ; 

int FUNC18(int argc, char **argv)
{
    BIGNUM *bn = NULL;
    int hex = 0, checks = 20, generate = 0, bits = 0, safe = 0, ret = 1;
    char *prog;
    OPTION_CHOICE o;

    prog = FUNC14(argc, argv, prime_options);
    while ((o = FUNC15()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
opthelp:
            FUNC0(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC13(prime_options);
            ret = 0;
            goto end;
        case OPT_HEX:
            hex = 1;
            break;
        case OPT_GENERATE:
            generate = 1;
            break;
        case OPT_BITS:
            bits = FUNC11(FUNC12());
            break;
        case OPT_SAFE:
            safe = 1;
            break;
        case OPT_CHECKS:
            checks = FUNC11(FUNC12());
            break;
        }
    }
    argc = FUNC16();
    argv = FUNC17();

    if (generate) {
        if (argc != 0) {
            FUNC0(bio_err, "Extra arguments given.\n");
            goto opthelp;
        }
    } else if (argc == 0) {
        FUNC0(bio_err, "%s: No prime specified\n", prog);
        goto opthelp;
    }

    if (generate) {
        char *s;

        if (!bits) {
            FUNC0(bio_err, "Specify the number of bits.\n");
            goto end;
        }
        bn = FUNC8();
        if (bn == NULL) {
            FUNC0(bio_err, "Out of memory.\n");
            goto end;
        }
        if (!FUNC5(bn, bits, safe, NULL, NULL, NULL)) {
            FUNC0(bio_err, "Failed to generate prime.\n");
            goto end;
        }
        s = hex ? FUNC2(bn) : FUNC1(bn);
        if (s == NULL) {
            FUNC0(bio_err, "Out of memory.\n");
            goto end;
        }
        FUNC0(bio_out, "%s\n", s);
        FUNC10(s);
    } else {
        for ( ; *argv; argv++) {
            int r;

            if (hex)
                r = FUNC6(&bn, argv[0]);
            else
                r = FUNC3(&bn, argv[0]);

            if (!r) {
                FUNC0(bio_err, "Failed to process value (%s)\n", argv[0]);
                goto end;
            }

            FUNC9(bio_out, bn);
            FUNC0(bio_out, " (%s) %s prime\n",
                       argv[0],
                       FUNC7(bn, checks, NULL, NULL)
                           ? "is" : "is not");
        }
    }

    ret = 0;
 end:
    FUNC4(bn);
    return ret;
}