#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type2 ;
struct TYPE_6__ {char* data; int length; } ;
struct ntlm_type2 {char* targetname; TYPE_1__ targetinfo; int /*<<< orphan*/  flags; int /*<<< orphan*/  challenge; } ;
struct ntlm_server_init_options {int /*<<< orphan*/  kerberos_realm_string; } ;
struct ntlm_buf {char* data; int length; } ;
typedef  int /*<<< orphan*/  krb5_ntlm ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_7__ {int length; char* data; } ;
typedef  TYPE_2__ krb5_data ;

/* Variables and functions */
 int NTLM_NEG_NTLM ; 
 int NTLM_NEG_UNICODE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char**) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct ntlm_type2*,struct ntlm_buf*) ; 
 int /*<<< orphan*/  id ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ntlm_type2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

int
FUNC16(struct ntlm_server_init_options *opt,
		 int argc, char ** argv)
{
    krb5_error_code ret;
    krb5_ntlm ntlm;
    struct ntlm_type2 type2;
    krb5_data challenge, opaque;
    struct ntlm_buf data;
    char *s;
    static char zero2[] = "\x00\x00";

    FUNC14(&type2, 0, sizeof(type2));

    ret = FUNC6(context, &ntlm);
    if (ret)
	FUNC4(context, 1, ret, "krb5_ntlm_alloc");

    ret = FUNC12(context,
				 ntlm,
				 opt->kerberos_realm_string,
				 id,
				 NTLM_NEG_UNICODE|NTLM_NEG_NTLM,
				 "NUTCRACKER",
				 "L");
    if (ret)
	FUNC4(context, 1, ret, "krb5_ntlm_init_request");

    /*
     *
     */

    ret = FUNC8(context, ntlm, &challenge);
    if (ret)
	FUNC4(context, 1, ret, "krb5_ntlm_init_get_challange");

    if (challenge.length != sizeof(type2.challenge))
	FUNC5(context, 1, "ntlm challenge have wrong length");
    FUNC13(type2.challenge, challenge.data, sizeof(type2.challenge));
    FUNC3(&challenge);

    ret = FUNC9(context, ntlm, &type2.flags);
    if (ret)
	FUNC4(context, 1, ret, "krb5_ntlm_init_get_flags");

    FUNC11(context, ntlm, &type2.targetname);
    type2.targetinfo.data = zero2;
    type2.targetinfo.length = 2;

    ret = FUNC2(&type2, &data);
    if (ret)
	FUNC5(context, 1, "heim_ntlm_encode_type2");

    FUNC1(type2.targetname);

    /*
     *
     */

    FUNC0(data.data, data.length, &s);
    FUNC1(data.data);
    FUNC15("type2=%s\n", s);
    FUNC1(s);

    /*
     *
     */

    ret = FUNC10(context, ntlm, &opaque);
    if (ret)
	FUNC4(context, 1, ret, "krb5_ntlm_init_get_opaque");

    FUNC0(opaque.data, opaque.length, &s);
    FUNC3(&opaque);
    FUNC15("opaque=%s\n", s);
    FUNC1(s);

    /*
     *
     */

    FUNC7(context, ntlm);

    return 0;
}