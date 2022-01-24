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
struct validate_options {int /*<<< orphan*/  pass_strings; } ;
typedef  int /*<<< orphan*/  hx509_validate_ctx ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_VALIDATE_F_VALIDATE ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hx509_print_stdout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  validate_f ; 

int
FUNC11(struct validate_options *opt, int argc, char **argv)
{
    hx509_validate_ctx ctx;
    hx509_certs certs;
    hx509_lock lock;

    FUNC5(context, &lock);
    FUNC10(lock, &opt->pass_strings);

    FUNC8(context, &ctx);
    FUNC9(ctx, hx509_print_stdout, stdout);
    FUNC6(ctx, HX509_VALIDATE_F_VALIDATE);

    while(argc--) {
	int ret;
	ret = FUNC2(context, argv[0], 0, lock, &certs);
	if (ret)
	    FUNC0(1, "hx509_certs_init: %d", ret);
	FUNC3(context, certs, validate_f, ctx);
	FUNC1(&certs);
	argv++;
    }
    FUNC7(ctx);

    FUNC4(lock);

    return 0;
}