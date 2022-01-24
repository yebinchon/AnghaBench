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
typedef  enum Hash { ____Placeholder_Hash } Hash ;
typedef  int OPTION_CHOICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int HASH_BOTH ; 
 int HASH_NEW ; 
 int HASH_OLD ; 
 char LIST_SEPARATOR_CHAR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
#define  OPT_COMPAT 134 
#define  OPT_EOF 133 
#define  OPT_ERR 132 
#define  OPT_HELP 131 
#define  OPT_N 130 
#define  OPT_OLD 129 
#define  OPT_VERBOSE 128 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ FUNC7 (char*,int) ; 
 int /*<<< orphan*/  evpmd ; 
 int /*<<< orphan*/  evpmdsize ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 char** FUNC13 () ; 
 int /*<<< orphan*/  rehash_options ; 
 int /*<<< orphan*/  remove_links ; 
 char* FUNC14 (char*,char*) ; 
 int verbose ; 

int FUNC15(int argc, char **argv)
{
    const char *env, *prog;
    char *e, *m;
    int errs = 0;
    OPTION_CHOICE o;
    enum Hash h = HASH_NEW;

    prog = FUNC10(argc, argv, rehash_options);
    while ((o = FUNC11()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
            FUNC0(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC9(rehash_options);
            goto end;
        case OPT_COMPAT:
            h = HASH_BOTH;
            break;
        case OPT_OLD:
            h = HASH_OLD;
            break;
        case OPT_N:
            remove_links = 0;
            break;
        case OPT_VERBOSE:
            verbose = 1;
            break;
        }
    }
    argc = FUNC12();
    argv = FUNC13();

    evpmd = FUNC2();
    evpmdsize = FUNC1(evpmd);

    if (*argv != NULL) {
        while (*argv != NULL)
            errs += FUNC7(*argv++, h);
    } else if ((env = FUNC8(FUNC6())) != NULL) {
        char lsc[2] = { LIST_SEPARATOR_CHAR, '\0' };
        m = FUNC4(env);
        for (e = FUNC14(m, lsc); e != NULL; e = FUNC14(NULL, lsc))
            errs += FUNC7(e, h);
        FUNC3(m);
    } else {
        errs += FUNC7(FUNC5(), h);
    }

 end:
    return errs;
}