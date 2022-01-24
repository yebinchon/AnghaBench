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
typedef  int HELPLIST_CHOICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FT_cipher ; 
 int /*<<< orphan*/  FT_general ; 
 int /*<<< orphan*/  FT_md ; 
#define  OPT_CIPHER_ALGORITHMS 141 
#define  OPT_CIPHER_COMMANDS 140 
#define  OPT_COMMANDS 139 
#define  OPT_DIGEST_ALGORITHMS 138 
#define  OPT_DIGEST_COMMANDS 137 
#define  OPT_DISABLED 136 
#define  OPT_EOF 135 
#define  OPT_ERR 134 
#define  OPT_HELP 133 
#define  OPT_MISSING_HELP 132 
#define  OPT_ONE 131 
#define  OPT_OPTIONS 130 
#define  OPT_PK_ALGORITHMS 129 
#define  OPT_PK_METHOD 128 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/  list_cipher_fn ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  list_md_fn ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  list_options ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 () ; 

int FUNC14(int argc, char **argv)
{
    char *prog;
    HELPLIST_CHOICE o;
    int one = 0, done = 0;

    prog = FUNC11(argc, argv, list_options);
    while ((o = FUNC12()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:  /* Never hit, but suppresses warning */
        case OPT_ERR:
opthelp:
            FUNC0(bio_err, "%s: Use -help for summary.\n", prog);
            return 1;
        case OPT_HELP:
            FUNC10(list_options);
            break;
        case OPT_ONE:
            one = 1;
            break;
        case OPT_COMMANDS:
            FUNC8(FT_general, one);
            break;
        case OPT_DIGEST_COMMANDS:
            FUNC8(FT_md, one);
            break;
        case OPT_DIGEST_ALGORITHMS:
            FUNC2(list_md_fn, bio_out);
            break;
        case OPT_CIPHER_COMMANDS:
            FUNC8(FT_cipher, one);
            break;
        case OPT_CIPHER_ALGORITHMS:
            FUNC1(list_cipher_fn, bio_out);
            break;
        case OPT_PK_ALGORITHMS:
            FUNC6();
            break;
        case OPT_PK_METHOD:
            FUNC7();
            break;
        case OPT_DISABLED:
            FUNC3();
            break;
        case OPT_MISSING_HELP:
            FUNC4();
            break;
        case OPT_OPTIONS:
            FUNC5(FUNC9());
            break;
        }
        done = 1;
    }
    if (FUNC13() != 0) {
        FUNC0(bio_err, "Extra arguments given.\n");
        goto opthelp;
    }

    if (!done)
        goto opthelp;

    return 0;
}