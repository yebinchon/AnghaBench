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
struct query_options {scalar_t__ print_flag; int /*<<< orphan*/  expr_string; scalar_t__ digitalSignature_flag; scalar_t__ keyEncipherment_flag; scalar_t__ private_key_flag; scalar_t__ eku_string; int /*<<< orphan*/  friendlyname_string; int /*<<< orphan*/  pass_strings; } ;
typedef  int /*<<< orphan*/  hx509_query ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  heim_oid ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_QUERY_OPTION_KU_DIGITALSIGNATURE ; 
 int /*<<< orphan*/  HX509_QUERY_OPTION_KU_ENCIPHERMENT ; 
 int /*<<< orphan*/  HX509_QUERY_OPTION_PRIVATE_KEY ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 

int
FUNC20(struct query_options *opt, int argc, char **argv)
{
    hx509_lock lock;
    hx509_query *q;
    hx509_certs certs;
    hx509_cert c;
    int ret;

    ret = FUNC10(context, &q);
    if (ret)
	FUNC1(1, "hx509_query_alloc: %d", ret);

    FUNC9(context, &lock);
    FUNC16(lock, &opt->pass_strings);

    ret = FUNC6(context, "MEMORY:cert-store", 0, NULL, &certs);
    if (ret) FUNC7(context, 1, ret, "hx509_certs_init: MEMORY");

    while (argc > 0) {

	ret = FUNC3(context, certs, lock, argv[0]);
	if (ret)
	    FUNC1(1, "hx509_certs_append: %s: %d", argv[0], ret);

	argc--;
	argv++;
    }

    if (opt->friendlyname_string)
	FUNC14(q, opt->friendlyname_string);

    if (opt->eku_string) {
	heim_oid oid;

	FUNC17(opt->eku_string, NULL, &oid);

	ret = FUNC12(q, &oid);
	if (ret)
	    FUNC1(1, "hx509_query_match_eku: %d", ret);
	FUNC0(&oid);
    }

    if (opt->private_key_flag)
	FUNC15(q, HX509_QUERY_OPTION_PRIVATE_KEY);

    if (opt->keyEncipherment_flag)
	FUNC15(q, HX509_QUERY_OPTION_KU_ENCIPHERMENT);

    if (opt->digitalSignature_flag)
	FUNC15(q, HX509_QUERY_OPTION_KU_DIGITALSIGNATURE);

    if (opt->expr_string)
	FUNC13(context, q, opt->expr_string);

    ret = FUNC4(context, certs, q, &c);
    FUNC11(context, q);
    if (ret)
	FUNC19("no match found (%d)\n", ret);
    else {
	FUNC19("match found\n");
	if (opt->print_flag)
	    FUNC18(context, c, 0);
    }

    FUNC2(c);
    FUNC5(&certs);

    FUNC8(lock);

    return ret;
}