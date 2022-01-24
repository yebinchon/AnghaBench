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
struct print_s {int /*<<< orphan*/  verbose; scalar_t__ counter; } ;
struct print_options {scalar_t__ info_flag; scalar_t__ never_fail_flag; int /*<<< orphan*/  pass_strings; int /*<<< orphan*/  content_flag; } ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct print_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  print_f ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

int
FUNC9(struct print_options *opt, int argc, char **argv)
{
    hx509_certs certs;
    hx509_lock lock;
    struct print_s s;

    s.counter = 0;
    s.verbose = opt->content_flag;

    FUNC6(context, &lock);
    FUNC7(lock, &opt->pass_strings);

    while(argc--) {
	int ret;
	ret = FUNC2(context, argv[0], 0, lock, &certs);
	if (ret) {
	    if (opt->never_fail_flag) {
		FUNC8("ignoreing failure: %d\n", ret);
		continue;
	    }
	    FUNC4(context, 1, ret, "hx509_certs_init");
	}
	if (opt->info_flag)
	    FUNC1(context, certs, NULL, NULL);
	FUNC3(context, certs, print_f, &s);
	FUNC0(&certs);
	argv++;
    }

    FUNC5(lock);

    return 0;
}