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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int RAND_BUF_SIZE ; 
 int /*<<< orphan*/  RAND_F_RAND_WRITE_FILE ; 
 int /*<<< orphan*/  RAND_R_CANNOT_OPEN_FILE ; 
 int /*<<< orphan*/  RAND_R_NOT_A_REGULAR_FILE ; 
 int FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,char*) ; 
 int FUNC8 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*,int,int) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (char const*,struct stat*) ; 

int FUNC12(const char *file)
{
    unsigned char buf[RAND_BUF_SIZE];
    int ret = -1;
    FILE *out = NULL;
#ifndef OPENSSL_NO_POSIX_IO
    struct stat sb;

    if (FUNC11(file, &sb) >= 0 && !FUNC4(sb.st_mode)) {
        FUNC3(RAND_F_RAND_WRITE_FILE, RAND_R_NOT_A_REGULAR_FILE);
        FUNC0(2, "Filename=", file);
        return -1;
    }
#endif

    /* Collect enough random data. */
    if (FUNC2(buf, (int)sizeof(buf)) != 1)
        return  -1;

#if defined(O_CREAT) && !defined(OPENSSL_NO_POSIX_IO) && \
    !defined(OPENSSL_SYS_VMS) && !defined(OPENSSL_SYS_WINDOWS)
    {
# ifndef O_BINARY
#  define O_BINARY 0
# endif
        /*
         * chmod(..., 0600) is too late to protect the file, permissions
         * should be restrictive from the start
         */
        int fd = open(file, O_WRONLY | O_CREAT | O_BINARY, 0600);
        if (fd != -1)
            out = fdopen(fd, "wb");
    }
#endif

#ifdef OPENSSL_SYS_VMS
    /*
     * VMS NOTE: Prior versions of this routine created a _new_ version of
     * the rand file for each call into this routine, then deleted all
     * existing versions named ;-1, and finally renamed the current version
     * as ';1'. Under concurrent usage, this resulted in an RMS race
     * condition in rename() which could orphan files (see vms message help
     * for RMS$_REENT). With the fopen() calls below, openssl/VMS now shares
     * the top-level version of the rand file. Note that there may still be
     * conditions where the top-level rand file is locked. If so, this code
     * will then create a new version of the rand file. Without the delete
     * and rename code, this can result in ascending file versions that stop
     * at version 32767, and this routine will then return an error. The
     * remedy for this is to recode the calling application to avoid
     * concurrent use of the rand file, or synchronize usage at the
     * application level. Also consider whether or not you NEED a persistent
     * rand file in a concurrent use situation.
     */
    out = openssl_fopen(file, "rb+");
#endif

    if (out == NULL)
        out = FUNC10(file, "wb");
    if (out == NULL) {
        FUNC3(RAND_F_RAND_WRITE_FILE, RAND_R_CANNOT_OPEN_FILE);
        FUNC0(2, "Filename=", file);
        return -1;
    }

#if !defined(NO_CHMOD) && !defined(OPENSSL_NO_POSIX_IO)
    /*
     * Yes it's late to do this (see above comment), but better than nothing.
     */
    FUNC5(file, 0600);
#endif

    ret = FUNC8(buf, 1, RAND_BUF_SIZE, out);
    FUNC6(out);
    FUNC1(buf, RAND_BUF_SIZE);
    return ret;
}