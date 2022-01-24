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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int BIO_CLOSE ; 
 int BIO_FP_TEXT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int _O_BINARY ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char,int) ; 
 int FUNC9 (char const*,int,int,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

BIO *FUNC13(const char *filename, int format, int private)
{
    FILE *fp = NULL;
    BIO *b = NULL;
    int fd = -1, bflags, mode, textmode;

    if (!private || filename == NULL || FUNC11(filename, "-") == 0)
        return FUNC3(filename, 'w', format);

    mode = O_WRONLY;
#ifdef O_CREAT
    mode |= O_CREAT;
#endif
#ifdef O_TRUNC
    mode |= O_TRUNC;
#endif
    textmode = FUNC7(format);
    if (!textmode) {
#ifdef O_BINARY
        mode |= O_BINARY;
#elif defined(_O_BINARY)
        mode |= _O_BINARY;
#endif
    }

#ifdef OPENSSL_SYS_VMS
    /* VMS doesn't have O_BINARY, it just doesn't make sense.  But,
     * it still needs to know that we're going binary, or fdopen()
     * will fail with "invalid argument"...  so we tell VMS what the
     * context is.
     */
    if (!textmode)
        fd = open(filename, mode, 0600, "ctx=bin");
    else
#endif
        fd = FUNC9(filename, mode, 0600);
    if (fd < 0)
        goto err;
    fp = FUNC6(fd, FUNC8('w', format));
    if (fp == NULL)
        goto err;
    bflags = BIO_CLOSE;
    if (textmode)
        bflags |= BIO_FP_TEXT;
    b = FUNC0(fp, bflags);
    if (b)
        return b;

 err:
    FUNC1(bio_err, "%s: Can't open \"%s\" for writing, %s\n",
               FUNC10(), filename, FUNC12(errno));
    FUNC2(bio_err);
    /* If we have fp, then fdopen took over fd, so don't close both. */
    if (fp)
        FUNC5(fp);
    else if (fd >= 0)
        FUNC4(fd);
    return NULL;
}