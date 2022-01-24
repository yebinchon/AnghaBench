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
struct test_crypto_options {int /*<<< orphan*/  pass_strings; } ;
typedef  int /*<<< orphan*/  hx509_verify_ctx ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_one_cert ; 

int
FUNC9(struct test_crypto_options *opt, int argc, char ** argv)
{
    hx509_verify_ctx vctx;
    hx509_certs certs;
    hx509_lock lock;
    int i, ret;

    FUNC5(context, &lock);
    FUNC8(lock, &opt->pass_strings);

    ret = FUNC2(context, "MEMORY:test-crypto", 0, NULL, &certs);
    if (ret) FUNC4(context, 1, ret, "hx509_certs_init: MEMORY");

    for (i = 0; i < argc; i++) {
	ret = FUNC0(context, certs, lock, argv[i]);
	if (ret)
	    FUNC4(context, 1, ret, "hx509_certs_append");
    }

    ret = FUNC7(context, &vctx);
    if (ret)
	FUNC4(context, 1, ret, "hx509_verify_init_ctx");

    FUNC6(vctx, certs);

    ret = FUNC3(context, certs, test_one_cert, vctx);
    if (ret)
	FUNC4(context, 1, ret, "hx509_cert_iter");

    FUNC1(&certs);

    return 0;
}