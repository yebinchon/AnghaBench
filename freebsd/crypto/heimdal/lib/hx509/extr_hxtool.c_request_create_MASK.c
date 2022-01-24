#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int num_strings; int /*<<< orphan*/ * strings; } ;
struct TYPE_6__ {int num_strings; int /*<<< orphan*/ * strings; } ;
struct request_create_options {TYPE_2__ dnsname_strings; TYPE_1__ email_strings; scalar_t__ verbose_flag; scalar_t__ subject_string; int /*<<< orphan*/  key_bits_integer; int /*<<< orphan*/  generate_key_string; int /*<<< orphan*/  key_string; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  hx509_request ;
typedef  int /*<<< orphan*/  hx509_private_key ;
typedef  int /*<<< orphan*/ * hx509_name ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ heim_octet_string ;
typedef  int /*<<< orphan*/  SubjectPublicKeyInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char**) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC20(struct request_create_options *opt, int argc, char **argv)
{
    heim_octet_string request;
    hx509_request req;
    int ret, i;
    hx509_private_key signer;
    SubjectPublicKeyInfo key;
    const char *outfile = argv[0];

    FUNC17(&key, 0, sizeof(key));

    FUNC6(opt->key_string,
	    opt->generate_key_string,
	    opt->key_bits_integer,
	    &signer);

    FUNC14(context, &req);

    if (opt->subject_string) {
	hx509_name name = NULL;

	ret = FUNC10(context, opt->subject_string, &name);
	if (ret)
	    FUNC4(1, "hx509_parse_name: %d\n", ret);
	FUNC16(context, req, name);

	if (opt->verbose_flag) {
	    char *s;
	    FUNC9(name, &s);
	    FUNC18("%s\n", s);
	}
	FUNC8(&name);
    }

    for (i = 0; i < opt->email_strings.num_strings; i++) {
	ret = FUNC1(context, req,
				       opt->email_strings.strings[i]);
	if (ret)
	    FUNC7(context, 1, ret, "hx509_request_add_email");
    }

    for (i = 0; i < opt->dnsname_strings.num_strings; i++) {
	ret = FUNC0(context, req,
					  opt->dnsname_strings.strings[i]);
	if (ret)
	    FUNC7(context, 1, ret, "hx509_request_add_dns_name");
    }


    ret = FUNC11(context, signer, &key);
    if (ret)
	FUNC4(1, "hx509_private_key2SPKI: %d\n", ret);

    ret = FUNC15(context,
						  req,
						  &key);
    FUNC5(&key);
    if (ret)
	FUNC7(context, 1, ret, "hx509_request_set_SubjectPublicKeyInfo");

    ret = FUNC2(context,
				   req,
				   signer,
				   &request);
    if (ret)
	FUNC7(context, 1, ret, "_hx509_request_to_pkcs10");

    FUNC12(&signer);
    FUNC13(&req);

    if (ret == 0)
	FUNC19(outfile, request.data, request.length);
    FUNC3(&request);

    return 0;
}