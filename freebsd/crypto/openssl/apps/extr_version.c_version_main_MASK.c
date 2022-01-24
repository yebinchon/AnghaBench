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

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
#define  DEVRANDOM 141 
#define  DEVRANDOM_EGD 140 
 char* FUNC4 () ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  OPENSSL_BUILT_ON ; 
 int /*<<< orphan*/  OPENSSL_CFLAGS ; 
 int /*<<< orphan*/  OPENSSL_DIR ; 
 int /*<<< orphan*/  OPENSSL_ENGINES_DIR ; 
 int /*<<< orphan*/  OPENSSL_PLATFORM ; 
 int /*<<< orphan*/  OPENSSL_VERSION ; 
 scalar_t__ OPENSSL_VERSION_NUMBER ; 
 char* OPENSSL_VERSION_TEXT ; 
#define  OPT_A 139 
#define  OPT_B 138 
#define  OPT_D 137 
#define  OPT_E 136 
#define  OPT_EOF 135 
#define  OPT_ERR 134 
#define  OPT_F 133 
#define  OPT_HELP 132 
#define  OPT_O 131 
#define  OPT_P 130 
#define  OPT_R 129 
#define  OPT_V 128 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 char* FUNC8 () ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const**) ; 
 int /*<<< orphan*/  version_options ; 

int FUNC15(int argc, char **argv)
{
    int ret = 1, dirty = 0, seed = 0;
    int cflags = 0, version = 0, date = 0, options = 0, platform = 0, dir = 0;
    int engdir = 0;
    char *prog;
    OPTION_CHOICE o;

    prog = FUNC10(argc, argv, version_options);
    while ((o = FUNC11()) != OPT_EOF) {
        switch (o) {
        case OPT_EOF:
        case OPT_ERR:
opthelp:
            FUNC1(bio_err, "%s: Use -help for summary.\n", prog);
            goto end;
        case OPT_HELP:
            FUNC9(version_options);
            ret = 0;
            goto end;
        case OPT_B:
            dirty = date = 1;
            break;
        case OPT_D:
            dirty = dir = 1;
            break;
        case OPT_E:
            dirty = engdir = 1;
            break;
        case OPT_F:
            dirty = cflags = 1;
            break;
        case OPT_O:
            dirty = options = 1;
            break;
        case OPT_P:
            dirty = platform = 1;
            break;
        case OPT_R:
            dirty = seed = 1;
            break;
        case OPT_V:
            dirty = version = 1;
            break;
        case OPT_A:
            seed = options = cflags = version = date = platform = dir = engdir
                = 1;
            break;
        }
    }
    if (FUNC12() != 0) {
        FUNC1(bio_err, "Extra parameters given.\n");
        goto opthelp;
    }
    if (!dirty)
        version = 1;

    if (version) {
        if (FUNC7() == OPENSSL_VERSION_NUMBER)
            FUNC13("%s\n", FUNC6(OPENSSL_VERSION));
        else
            FUNC13("%s (Library: %s)\n",
                   OPENSSL_VERSION_TEXT, FUNC6(OPENSSL_VERSION));
    }
    if (date)
        FUNC13("%s\n", FUNC6(OPENSSL_BUILT_ON));
    if (platform)
        FUNC13("%s\n", FUNC6(OPENSSL_PLATFORM));
    if (options) {
        FUNC13("options:  ");
        FUNC13("%s ", FUNC2());
#ifndef OPENSSL_NO_MD2
        FUNC13("%s ", FUNC5());
#endif
#ifndef OPENSSL_NO_RC4
        FUNC13("%s ", FUNC8());
#endif
#ifndef OPENSSL_NO_DES
        FUNC13("%s ", FUNC3());
#endif
#ifndef OPENSSL_NO_IDEA
        FUNC13("%s ", FUNC4());
#endif
#ifndef OPENSSL_NO_BF
        FUNC13("%s ", FUNC0());
#endif
        FUNC13("\n");
    }
    if (cflags)
        FUNC13("%s\n", FUNC6(OPENSSL_CFLAGS));
    if (dir)
        FUNC13("%s\n", FUNC6(OPENSSL_DIR));
    if (engdir)
        FUNC13("%s\n", FUNC6(OPENSSL_ENGINES_DIR));
    if (seed) {
        FUNC13("Seeding source:");
#ifdef OPENSSL_RAND_SEED_RTDSC
        printf(" rtdsc");
#endif
#ifdef OPENSSL_RAND_SEED_RDCPU
        printf(" rdrand ( rdseed rdrand )");
#endif
#ifdef OPENSSL_RAND_SEED_LIBRANDOM
        printf(" C-library-random");
#endif
#ifdef OPENSSL_RAND_SEED_GETRANDOM
        printf(" getrandom-syscall");
#endif
#ifdef OPENSSL_RAND_SEED_DEVRANDOM
        {
            static const char *dev[] = { DEVRANDOM, NULL };
            printlist(" random-device", dev);
        }
#endif
#ifdef OPENSSL_RAND_SEED_EGD
        {
            static const char *dev[] = { DEVRANDOM_EGD, NULL };
            printlist(" EGD", dev);
        }
#endif
#ifdef OPENSSL_RAND_SEED_NONE
        printf(" none");
#endif
#ifdef OPENSSL_RAND_SEED_OS
        printf(" os-specific");
#endif
        FUNC13("\n");
    }
    ret = 0;
 end:
    return ret;
}