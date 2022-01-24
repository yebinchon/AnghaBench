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
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const char *serialfile, ASN1_INTEGER *serial)
{
    int ret = 0;
    BIO *out = NULL;

    if ((out = FUNC1(serialfile, "w")) == NULL)
        goto err;
    if (FUNC4(out, serial) <= 0)
        goto err;
    if (FUNC3(out, "\n") <= 0)
        goto err;
    ret = 1;
 err:
    if (!ret)
        FUNC2(bio_err, "could not save serial number to %s\n",
                   serialfile);
    FUNC0(out);
    return ret;
}