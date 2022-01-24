#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_socklen_t ;
struct TYPE_11__ {int /*<<< orphan*/  pkinit_kdc_revoke; int /*<<< orphan*/  pkinit_kdc_cert_pool; int /*<<< orphan*/ * pkinit_kdc_anchors; int /*<<< orphan*/ * pkinit_kdc_identity; scalar_t__ enable_pkinit; } ;
typedef  TYPE_1__ krb5_kdc_configuration ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_12__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_address ;
typedef  int /*<<< orphan*/  astr ;
typedef  int /*<<< orphan*/  Der_type ;
typedef  int /*<<< orphan*/  Der_class ;

/* Variables and functions */
 scalar_t__ HEIM_ERR_EOF ; 
 scalar_t__ KRB5_PROG_ATYPE_NOSUPP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  args ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,int*) ; 
 scalar_t__ help_flag ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sockaddr*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,TYPE_2__*,int /*<<< orphan*/ *,char*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (struct timeval*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (int) ; 
 int /*<<< orphan*/  num_args ; 
 int FUNC26 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 scalar_t__ version_flag ; 

int
FUNC31(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_kdc_configuration *config;
    krb5_storage *sp;
    int fd, optidx = 0;

    FUNC29(argv[0]);

    if(FUNC5(args, num_args, argc, argv, &optidx))
	FUNC30(1);

    if(help_flag)
	FUNC30(0);

    if(version_flag){
	FUNC27(NULL);
	FUNC4(0);
    }

    ret = FUNC13(&context);
    if (ret)
	FUNC3 (1, "krb5_init_context failed to parse configuration file");

    ret = FUNC14(context, &config);
    if (ret)
	FUNC9(context, 1, ret, "krb5_kdc_default_config");

    FUNC6(context, "kdc-replay", config);

    ret = FUNC17(context, config);
    if (ret)
	FUNC9(context, 1, ret, "krb5_kdc_set_dbinfo");

#ifdef PKINIT
    if (config->enable_pkinit) {
	if (config->pkinit_kdc_identity == NULL)
	    krb5_errx(context, 1, "pkinit enabled but no identity");

	if (config->pkinit_kdc_anchors == NULL)
	    krb5_errx(context, 1, "pkinit enabled but no X509 anchors");

	krb5_kdc_pk_initialize(context, config,
			       config->pkinit_kdc_identity,
			       config->pkinit_kdc_anchors,
			       config->pkinit_kdc_cert_pool,
			       config->pkinit_kdc_revoke);

    }
#endif /* PKINIT */

    if (argc != 2)
	FUNC3(1, "argc != 2");

    FUNC28("kdc replay\n");

    fd = FUNC26(argv[1], O_RDONLY);
    if (fd < 0)
	FUNC2(1, "open: %s", argv[1]);

    sp = FUNC25(fd);
    if (sp == NULL)
	FUNC10(context, 1, "krb5_storage_from_fd");

    while(1) {
	struct sockaddr_storage sa;
	krb5_socklen_t salen = sizeof(sa);
	struct timeval tv;
	krb5_address a;
	krb5_data d, r;
	uint32_t t, clty, tag;
	char astr[80];

	ret = FUNC22(sp, &t);
	if (ret == HEIM_ERR_EOF)
	    break;
	else if (ret)
	    FUNC10(context, 1, "krb5_ret_uint32(version)");
	if (t != 1)
	    FUNC10(context, 1, "version not 1");
	ret = FUNC22(sp, &t);
	if (ret)
	    FUNC10(context, 1, "krb5_ret_uint32(time)");
	ret = FUNC20(sp, &a);
	if (ret)
	    FUNC10(context, 1, "krb5_ret_address");
	ret = FUNC21(sp, &d);
	if (ret)
	    FUNC10(context, 1, "krb5_ret_data");
	ret = FUNC22(sp, &clty);
	if (ret)
	    FUNC10(context, 1, "krb5_ret_uint32(class|type)");
	ret = FUNC22(sp, &tag);
	if (ret)
	    FUNC10(context, 1, "krb5_ret_uint32(tag)");


	ret = FUNC7 (context, &a, (struct sockaddr *)&sa,
				  &salen, 88);
	if (ret == KRB5_PROG_ATYPE_NOSUPP)
	    goto out;
	else if (ret)
	    FUNC9(context, 1, ret, "krb5_addr2sockaddr");

	ret = FUNC19(&a, astr, sizeof(astr), NULL);
	if (ret)
	    FUNC9(context, 1, ret, "krb5_print_address");

	FUNC28("processing request from %s, %lu bytes\n",
	       astr, (unsigned long)d.length);

	r.length = 0;
	r.data = NULL;

	tv.tv_sec = t;
	tv.tv_usec = 0;

	FUNC18(&tv);
	FUNC23(context, tv.tv_sec, 0);

	ret = FUNC16(context, config, d.data, d.length,
				       &r, NULL, astr,
				       (struct sockaddr *)&sa, 0);
	if (ret)
	    FUNC9(context, 1, ret, "krb5_kdc_process_request");

	if (r.length) {
	    Der_class cl;
	    Der_type ty;
	    unsigned int tag2;
	    ret = FUNC1 (r.data, r.length,
			       &cl, &ty, &tag2, NULL);
	    if (FUNC0(cl, ty, 0) != clty)
		FUNC10(context, 1, "class|type mismatch: %d != %d",
			  (int)FUNC0(cl, ty, 0), (int)clty);
	    if (tag != tag2)
		FUNC10(context, 1, "tag mismatch");

	    FUNC8(&r);
	} else {
	    if (clty != 0xffffffff)
		FUNC10(context, 1, "clty not invalid");
	    if (tag != 0xffffffff)
		FUNC10(context, 1, "tag not invalid");
	}

    out:
	FUNC8(&d);
	FUNC11(context, &a);
    }

    FUNC24(sp);
    FUNC12(context);

    FUNC28("done\n");

    return 0;
}