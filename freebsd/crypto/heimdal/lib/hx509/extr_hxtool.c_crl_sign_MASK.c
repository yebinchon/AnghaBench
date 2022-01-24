#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct crl_sign_options {char* signer_string; scalar_t__ crl_file_string; scalar_t__ lifetime_string; int /*<<< orphan*/  pass_strings; } ;
typedef  int /*<<< orphan*/  hx509_query ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_crl ;
typedef  int /*<<< orphan*/ * hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ heim_octet_string ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_QUERY_OPTION_PRIVATE_KEY ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC19 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC21(struct crl_sign_options *opt, int argc, char **argv)
{
    hx509_crl crl;
    heim_octet_string os;
    hx509_cert signer = NULL;
    hx509_lock lock;
    int ret;

    FUNC14(context, &lock);
    FUNC18(lock, &opt->pass_strings);

    ret = FUNC8(context, &crl);
    if (ret)
	FUNC0(1, "crl alloc");

    if (opt->signer_string == NULL)
	FUNC0(1, "signer missing");

    {
	hx509_certs certs = NULL;
	hx509_query *q;

	ret = FUNC6(context, opt->signer_string, 0,
			       NULL, &certs);
	if (ret)
	    FUNC12(context, 1, ret,
		      "hx509_certs_init: %s", opt->signer_string);

	ret = FUNC15(context, &q);
	if (ret)
	    FUNC12(context, 1, ret, "hx509_query_alloc: %d", ret);

	FUNC17(q, HX509_QUERY_OPTION_PRIVATE_KEY);

	ret = FUNC4(context, certs, q, &signer);
	FUNC16(context, q);
	FUNC5(&certs);
	if (ret)
	    FUNC12(context, 1, ret, "no signer certificate found");
    }

    if (opt->lifetime_string) {
	int delta;

	delta = FUNC19(opt->lifetime_string, "day");
	if (delta < 0)
	    FUNC0(1, "Invalid lifetime: %s", opt->lifetime_string);

	FUNC10(context, crl, delta);
    }

    {
	hx509_certs revoked = NULL;
	int i;

	ret = FUNC6(context, "MEMORY:revoked-certs", 0,
			       NULL, &revoked);
	if (ret)
	    FUNC12(context, 1, ret,
		      "hx509_certs_init: MEMORY cert");

	for (i = 0; i < argc; i++) {
	    ret = FUNC3(context, revoked, lock, argv[i]);
	    if (ret)
		FUNC12(context, 1, ret, "hx509_certs_append: %s", argv[i]);
	}

	FUNC7(context, crl, revoked);
	FUNC5(&revoked);
    }

    FUNC11(context, signer, crl, &os);

    if (opt->crl_file_string)
	FUNC20(opt->crl_file_string, os.data, os.length);

    FUNC1(os.data);

    FUNC9(context, &crl);
    FUNC2(signer);
    FUNC13(lock);

    return 0;
}