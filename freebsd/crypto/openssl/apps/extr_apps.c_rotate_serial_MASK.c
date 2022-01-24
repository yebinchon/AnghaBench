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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (char*,int,char*,char const*,char const*) ; 
 int BSIZE ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*) ; 

int FUNC5(const char *serialfile, const char *new_suffix,
                  const char *old_suffix)
{
    char buf[2][BSIZE];
    int i, j;

    i = FUNC4(serialfile) + FUNC4(old_suffix);
    j = FUNC4(serialfile) + FUNC4(new_suffix);
    if (i > j)
        j = i;
    if (j + 1 >= BSIZE) {
        FUNC0(bio_err, "file name too long\n");
        goto err;
    }
#ifndef OPENSSL_SYS_VMS
    j = FUNC1(buf[0], sizeof(buf[0]), "%s.%s", serialfile, new_suffix);
    j = FUNC1(buf[1], sizeof(buf[1]), "%s.%s", serialfile, old_suffix);
#else
    j = BIO_snprintf(buf[0], sizeof(buf[0]), "%s-%s", serialfile, new_suffix);
    j = BIO_snprintf(buf[1], sizeof(buf[1]), "%s-%s", serialfile, old_suffix);
#endif
    if (FUNC3(serialfile, buf[1]) < 0 && errno != ENOENT
#ifdef ENOTDIR
        && errno != ENOTDIR
#endif
        ) {
        FUNC0(bio_err,
                   "unable to rename %s to %s\n", serialfile, buf[1]);
        FUNC2("reason");
        goto err;
    }
    if (FUNC3(buf[0], serialfile) < 0) {
        FUNC0(bio_err,
                   "unable to rename %s to %s\n", buf[0], serialfile);
        FUNC2("reason");
        FUNC3(buf[1], serialfile);
        goto err;
    }
    return 1;
 err:
    return 0;
}