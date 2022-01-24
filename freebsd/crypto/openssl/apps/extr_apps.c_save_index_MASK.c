#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ unique_subject; } ;
struct TYPE_5__ {TYPE_1__ attributes; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ CA_DB ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (char*,int,char*,char const*,...) ; 
 int BSIZE ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bio_err ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 

int FUNC7(const char *dbfile, const char *suffix, CA_DB *db)
{
    char buf[3][BSIZE];
    BIO *out;
    int j;

    j = FUNC6(dbfile) + FUNC6(suffix);
    if (j + 6 >= BSIZE) {
        FUNC2(bio_err, "file name too long\n");
        goto err;
    }
#ifndef OPENSSL_SYS_VMS
    j = FUNC3(buf[2], sizeof(buf[2]), "%s.attr", dbfile);
    j = FUNC3(buf[1], sizeof(buf[1]), "%s.attr.%s", dbfile, suffix);
    j = FUNC3(buf[0], sizeof(buf[0]), "%s.%s", dbfile, suffix);
#else
    j = BIO_snprintf(buf[2], sizeof(buf[2]), "%s-attr", dbfile);
    j = BIO_snprintf(buf[1], sizeof(buf[1]), "%s-attr-%s", dbfile, suffix);
    j = BIO_snprintf(buf[0], sizeof(buf[0]), "%s-%s", dbfile, suffix);
#endif
    out = FUNC1(buf[0], "w");
    if (out == NULL) {
        FUNC5(dbfile);
        FUNC2(bio_err, "unable to open '%s'\n", dbfile);
        goto err;
    }
    j = FUNC4(out, db->db);
    FUNC0(out);
    if (j <= 0)
        goto err;

    out = FUNC1(buf[1], "w");
    if (out == NULL) {
        FUNC5(buf[2]);
        FUNC2(bio_err, "unable to open '%s'\n", buf[2]);
        goto err;
    }
    FUNC2(out, "unique_subject = %s\n",
               db->attributes.unique_subject ? "yes" : "no");
    FUNC0(out);

    return 1;
 err:
    return 0;
}