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
struct certificate_copy_options {int /*<<< orphan*/  out_pass_string; int /*<<< orphan*/  in_pass_strings; } ;
typedef  int /*<<< orphan*/ * hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_CERTS_CREATE ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC10(struct certificate_copy_options *opt, int argc, char **argv)
{
    hx509_certs certs;
    hx509_lock inlock, outlock = NULL;
    int ret;

    FUNC8(context, &inlock);
    FUNC9(inlock, &opt->in_pass_strings);

    if (opt->out_pass_string) {
	FUNC8(context, &outlock);
	ret = FUNC6(outlock, opt->out_pass_string);
	if (ret)
	    FUNC0(1, "hx509_lock_command_string: %s: %d",
		 opt->out_pass_string, ret);
    }

    ret = FUNC3(context, argv[argc - 1],
			   HX509_CERTS_CREATE, inlock, &certs);
    if (ret)
	FUNC5(context, 1, ret, "hx509_certs_init");

    while(argc-- > 1) {
	int retx;
	retx = FUNC1(context, certs, inlock, argv[0]);
	if (retx)
	    FUNC5(context, 1, retx, "hx509_certs_append");
	argv++;
    }

    ret = FUNC4(context, certs, 0, outlock);
	if (ret)
	    FUNC5(context, 1, ret, "hx509_certs_store");

    FUNC2(&certs);
    FUNC7(inlock);
    FUNC7(outlock);

    return 0;
}