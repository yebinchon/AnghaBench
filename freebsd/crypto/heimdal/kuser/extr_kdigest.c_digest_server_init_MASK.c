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
struct digest_server_init_options {char* type_string; int /*<<< orphan*/  kerberos_realm_string; int /*<<< orphan*/  cb_value_string; int /*<<< orphan*/  cb_type_string; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_digest ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  id ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

int
FUNC10(struct digest_server_init_options *opt,
		   int argc, char ** argv)
{
    krb5_error_code ret;
    krb5_digest digest;

    ret = FUNC0(context, &digest);
    if (ret)
	FUNC8(context, 1, ret, "digest_alloc");

    ret = FUNC7(context, digest, opt->type_string);
    if (ret)
	FUNC8(context, 1, ret, "krb5_digest_set_type");

    if (opt->cb_type_string && opt->cb_value_string) {
	ret = FUNC6(context, digest,
					opt->cb_type_string,
					opt->cb_value_string);
	if (ret)
	    FUNC8(context, 1, ret, "krb5_digest_set_server_cb");
    }
    ret = FUNC5(context,
				   digest,
				   opt->kerberos_realm_string,
				   id);
    if (ret)
	FUNC8(context, 1, ret, "krb5_digest_init_request");

    FUNC9("type=%s\n", opt->type_string);
    FUNC9("server-nonce=%s\n",
	   FUNC4(context, digest));
    {
	const char *s = FUNC2(context, digest);
	if (s)
	    FUNC9("identifier=%s\n", s);
    }
    FUNC9("opaque=%s\n", FUNC3(context, digest));

    FUNC1(digest);

    return 0;
}