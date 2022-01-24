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
struct ocsp_verify_options {int /*<<< orphan*/ * ocsp_file_string; } ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/  heim_octet_string ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verify_o ; 

int
FUNC11(struct ocsp_verify_options *opt, int argc, char **argv)
{
    hx509_lock lock;
    hx509_certs certs;
    int ret, i;
    heim_octet_string os;

    FUNC10(context, &lock);

    if (opt->ocsp_file_string == NULL)
	FUNC3(1, "no ocsp file given");

    ret = FUNC0(opt->ocsp_file_string, &os);
    if (ret)
	FUNC2(1, "map_file: %s: %d", argv[0], ret);

    ret = FUNC6(context, "MEMORY:test-certs", 0, NULL, &certs);
    if (ret) FUNC8(context, 1, ret, "hx509_certs_init: MEMORY");

    for (i = 0; i < argc; i++) {
	ret = FUNC4(context, certs, lock, argv[i]);
	if (ret)
	    FUNC8(context, 1, ret, "hx509_certs_append: %s", argv[i]);
    }

    ret = FUNC7(context, certs, verify_o, &os);

    FUNC5(&certs);
    FUNC1(&os);
    FUNC9(lock);

    return ret;
}