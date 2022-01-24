#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type3 ;
typedef  int /*<<< orphan*/  type2 ;
typedef  int /*<<< orphan*/  type1 ;
struct ntlm_type3 {int flags; int /*<<< orphan*/  sessionkey; int /*<<< orphan*/  ntlm; int /*<<< orphan*/  targetinfo; int /*<<< orphan*/  challenge; int /*<<< orphan*/  targetname; void* ws; void* username; scalar_t__* os; int /*<<< orphan*/ * hostname; int /*<<< orphan*/  domain; } ;
struct ntlm_type2 {int flags; int /*<<< orphan*/  sessionkey; int /*<<< orphan*/  ntlm; int /*<<< orphan*/  targetinfo; int /*<<< orphan*/  challenge; int /*<<< orphan*/  targetname; void* ws; void* username; scalar_t__* os; int /*<<< orphan*/ * hostname; int /*<<< orphan*/  domain; } ;
struct ntlm_type1 {int flags; int /*<<< orphan*/  sessionkey; int /*<<< orphan*/  ntlm; int /*<<< orphan*/  targetinfo; int /*<<< orphan*/  challenge; int /*<<< orphan*/  targetname; void* ws; void* username; scalar_t__* os; int /*<<< orphan*/ * hostname; int /*<<< orphan*/  domain; } ;
struct ntlm_buf {scalar_t__ length; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  ntlmv2 ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_NO_CHANNEL_BINDINGS ; 
 int /*<<< orphan*/  GSS_C_NO_CONTEXT ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  GSS_C_NO_OID ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int NTLM_NEG_KEYEX ; 
 int NTLM_NEG_NTLM ; 
 int NTLM_NEG_UNICODE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,struct ntlm_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct ntlm_buf*,struct ntlm_type3*) ; 
 scalar_t__ FUNC9 (struct ntlm_type3*,struct ntlm_buf*) ; 
 scalar_t__ FUNC10 (struct ntlm_type3*,struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC12 (struct ntlm_type3*,int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

__attribute__((used)) static int
FUNC15(int flags)
{
    const char *user = "foo",
	*domain = "mydomain",
	*password = "digestpassword";
    OM_uint32 maj_stat, min_stat;
    gss_ctx_id_t ctx = GSS_C_NO_CONTEXT;
    gss_buffer_desc input, output;
    struct ntlm_type1 type1;
    struct ntlm_type2 type2;
    struct ntlm_type3 type3;
    struct ntlm_buf data;
    krb5_error_code ret;

    FUNC12(&type1, 0, sizeof(type1));
    FUNC12(&type2, 0, sizeof(type2));
    FUNC12(&type3, 0, sizeof(type3));

    type1.flags = NTLM_NEG_UNICODE|NTLM_NEG_NTLM|flags;
    type1.domain = FUNC14(domain);
    type1.hostname = NULL;
    type1.os[0] = 0;
    type1.os[1] = 0;

    ret = FUNC9(&type1, &data);
    if (ret)
	FUNC1(1, "heim_ntlm_encode_type1");

    input.value = data.data;
    input.length = data.length;

    output.length = 0;
    output.value = NULL;

    maj_stat = FUNC3(&min_stat,
				      &ctx,
				      GSS_C_NO_CREDENTIAL,
				      &input,
				      GSS_C_NO_CHANNEL_BINDINGS,
				      NULL,
				      NULL,
				      &output,
				      NULL,
				      NULL,
				      NULL);
    FUNC2(data.data);
    if (FUNC0(maj_stat))
	FUNC1(1, "accept_sec_context v2 %s",
	     FUNC5(maj_stat, min_stat, GSS_C_NO_OID));

    if (output.length == 0)
	FUNC1(1, "output.length == 0");

    data.data = output.value;
    data.length = output.length;

    ret = FUNC8(&data, &type2);
    if (ret)
	FUNC1(1, "heim_ntlm_decode_type2");

    type3.flags = type2.flags;
    type3.username = FUNC13(user);
    type3.targetname = type2.targetname;
    type3.ws = FUNC13("workstation");

    {
	struct ntlm_buf key;
	unsigned char ntlmv2[16];

	FUNC11(password, &key);

	FUNC7(key.data, key.length,
				  user,
				  type2.targetname,
				  type2.challenge,
				  &type2.targetinfo,
				  ntlmv2,
				  &type3.ntlm);
	FUNC2(key.data);

	if (flags & NTLM_NEG_KEYEX) {
	    struct ntlm_buf sessionkey;
	    FUNC6(ntlmv2, sizeof(ntlmv2),
					 &sessionkey,
					 &type3.sessionkey);
	    FUNC2(sessionkey.data);
	}
    }

    ret = FUNC10(&type3, &data);
    if (ret)
	FUNC1(1, "heim_ntlm_encode_type3");

    input.length = data.length;
    input.value = data.data;

    maj_stat = FUNC3(&min_stat,
				      &ctx,
				      GSS_C_NO_CREDENTIAL,
				      &input,
				      GSS_C_NO_CHANNEL_BINDINGS,
				      NULL,
				      NULL,
				      &output,
				      NULL,
				      NULL,
				      NULL);
    FUNC2(input.value);
    if (maj_stat != GSS_S_COMPLETE)
	FUNC1(1, "accept_sec_context v2 2 %s",
	     FUNC5(maj_stat, min_stat, GSS_C_NO_OID));

    FUNC4(&min_stat, &ctx, NULL);

    return 0;
}