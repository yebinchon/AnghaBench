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
 int FUNC1 (char*,int,char*,char const*,...) ; 
 int BSIZE ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*) ; 

int FUNC5(const char *dbfile, const char *new_suffix,
                 const char *old_suffix)
{
    char buf[5][BSIZE];
    int i, j;

    i = FUNC4(dbfile) + FUNC4(old_suffix);
    j = FUNC4(dbfile) + FUNC4(new_suffix);
    if (i > j)
        j = i;
    if (j + 6 >= BSIZE) {
        FUNC0(bio_err, "file name too long\n");
        goto err;
    }
#ifndef OPENSSL_SYS_VMS
    j = FUNC1(buf[4], sizeof(buf[4]), "%s.attr", dbfile);
    j = FUNC1(buf[3], sizeof(buf[3]), "%s.attr.%s", dbfile, old_suffix);
    j = FUNC1(buf[2], sizeof(buf[2]), "%s.attr.%s", dbfile, new_suffix);
    j = FUNC1(buf[1], sizeof(buf[1]), "%s.%s", dbfile, old_suffix);
    j = FUNC1(buf[0], sizeof(buf[0]), "%s.%s", dbfile, new_suffix);
#else
    j = BIO_snprintf(buf[4], sizeof(buf[4]), "%s-attr", dbfile);
    j = BIO_snprintf(buf[3], sizeof(buf[3]), "%s-attr-%s", dbfile, old_suffix);
    j = BIO_snprintf(buf[2], sizeof(buf[2]), "%s-attr-%s", dbfile, new_suffix);
    j = BIO_snprintf(buf[1], sizeof(buf[1]), "%s-%s", dbfile, old_suffix);
    j = BIO_snprintf(buf[0], sizeof(buf[0]), "%s-%s", dbfile, new_suffix);
#endif
    if (FUNC3(dbfile, buf[1]) < 0 && errno != ENOENT
#ifdef ENOTDIR
        && errno != ENOTDIR
#endif
        ) {
        FUNC0(bio_err, "unable to rename %s to %s\n", dbfile, buf[1]);
        FUNC2("reason");
        goto err;
    }
    if (FUNC3(buf[0], dbfile) < 0) {
        FUNC0(bio_err, "unable to rename %s to %s\n", buf[0], dbfile);
        FUNC2("reason");
        FUNC3(buf[1], dbfile);
        goto err;
    }
    if (FUNC3(buf[4], buf[3]) < 0 && errno != ENOENT
#ifdef ENOTDIR
        && errno != ENOTDIR
#endif
        ) {
        FUNC0(bio_err, "unable to rename %s to %s\n", buf[4], buf[3]);
        FUNC2("reason");
        FUNC3(dbfile, buf[0]);
        FUNC3(buf[1], dbfile);
        goto err;
    }
    if (FUNC3(buf[2], buf[4]) < 0) {
        FUNC0(bio_err, "unable to rename %s to %s\n", buf[2], buf[4]);
        FUNC2("reason");
        FUNC3(buf[3], buf[4]);
        FUNC3(dbfile, buf[0]);
        FUNC3(buf[1], dbfile);
        goto err;
    }
    return 1;
 err:
    return 0;
}