#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type3 ;
typedef  int /*<<< orphan*/  type2 ;
typedef  int /*<<< orphan*/  type1 ;
struct TYPE_3__ {char* data; int length; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct ntlm_type3 {int flags; TYPE_1__ targetinfo; void* targetname; struct ntlm_type3* challenge; void* username; void* ws; TYPE_2__ ntlm; scalar_t__* os; int /*<<< orphan*/ * hostname; void* domain; } ;
struct ntlm_type2 {int flags; TYPE_1__ targetinfo; void* targetname; struct ntlm_type2* challenge; void* username; void* ws; TYPE_2__ ntlm; scalar_t__* os; int /*<<< orphan*/ * hostname; void* domain; } ;
struct ntlm_type1 {int flags; TYPE_1__ targetinfo; void* targetname; struct ntlm_type1* challenge; void* username; void* ws; TYPE_2__ ntlm; scalar_t__* os; int /*<<< orphan*/ * hostname; void* domain; } ;
struct ntlm_buf {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int NTLM_NEG_NTLM ; 
 int NTLM_NEG_TARGET ; 
 int NTLM_NEG_UNICODE ; 
 int NTLM_TARGET_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ntlm_type3*,TYPE_2__*) ; 
 int FUNC3 (struct ntlm_buf*,struct ntlm_type3*) ; 
 int FUNC4 (struct ntlm_buf*,struct ntlm_type3*) ; 
 int FUNC5 (struct ntlm_buf*,int,struct ntlm_type3*) ; 
 int FUNC6 (struct ntlm_type3*,struct ntlm_buf*) ; 
 int FUNC7 (struct ntlm_type3*,struct ntlm_buf*) ; 
 int FUNC8 (struct ntlm_type3*,struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct ntlm_type3*) ; 
 int /*<<< orphan*/  FUNC10 (struct ntlm_type3*) ; 
 int /*<<< orphan*/  FUNC11 (struct ntlm_type3*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC13 (struct ntlm_type3*,int,int) ; 
 void* FUNC14 (char const*) ; 
 scalar_t__ FUNC15 (char const*,void*) ; 

__attribute__((used)) static int
FUNC16(void)
{
    const char *user = "foo",
	*domain = "mydomain",
	*password = "digestpassword",
	*target = "DOMAIN";
    struct ntlm_type1 type1;
    struct ntlm_type2 type2;
    struct ntlm_type3 type3;
    struct ntlm_buf data;
    int ret, flags;

    FUNC13(&type1, 0, sizeof(type1));

    type1.flags = NTLM_NEG_UNICODE|NTLM_NEG_TARGET|NTLM_NEG_NTLM;
    type1.domain = FUNC14(domain);
    type1.hostname = NULL;
    type1.os[0] = 0;
    type1.os[1] = 0;

    ret = FUNC6(&type1, &data);
    if (ret)
	FUNC0(1, "heim_ntlm_encode_type1");

    FUNC13(&type1, 0, sizeof(type1));

    ret = FUNC3(&data, &type1);
    FUNC1(data.data);
    if (ret)
	FUNC0(1, "heim_ntlm_encode_type1");

    FUNC9(&type1);

    /*
     *
     */

    FUNC13(&type2, 0, sizeof(type2));

    flags = NTLM_NEG_UNICODE | NTLM_NEG_NTLM | NTLM_TARGET_DOMAIN;
    type2.flags = flags;

    FUNC13(type2.challenge, 0x7f, sizeof(type2.challenge));
    type2.targetname = FUNC14(target);
    type2.targetinfo.data = NULL;
    type2.targetinfo.length = 0;

    ret = FUNC7(&type2, &data);
    if (ret)
	FUNC0(1, "heim_ntlm_encode_type2");

    FUNC13(&type2, 0, sizeof(type2));

    ret = FUNC4(&data, &type2);
    FUNC1(data.data);
    if (ret)
	FUNC0(1, "heim_ntlm_decode_type2");

    FUNC10(&type2);

    /*
     *
     */

    FUNC13(&type3, 0, sizeof(type3));

    type3.flags = flags;
    type3.username = FUNC14(user);
    type3.targetname = FUNC14(target);
    type3.ws = FUNC14("workstation");

    {
	struct ntlm_buf key;
	FUNC12(password, &key);

	FUNC2(key.data, key.length,
				  type2.challenge,
				  &type3.ntlm);
	FUNC1(key.data);
    }

    ret = FUNC8(&type3, &data);
    if (ret)
	FUNC0(1, "heim_ntlm_encode_type3");

    FUNC1(type3.ntlm.data);

    FUNC13(&type3, 0, sizeof(type3));

    ret = FUNC5(&data, 1, &type3);
    FUNC1(data.data);
    if (ret)
	FUNC0(1, "heim_ntlm_decode_type3");

    if (FUNC15("workstation", type3.ws) != 0)
	FUNC0(1, "type3 ws wrong");

    if (FUNC15(target, type3.targetname) != 0)
	FUNC0(1, "type3 targetname wrong");

    if (FUNC15(user, type3.username) != 0)
	FUNC0(1, "type3 username wrong");


    FUNC11(&type3);

    /*
     * NTLMv2
     */

    FUNC13(&type2, 0, sizeof(type2));

    flags = NTLM_NEG_UNICODE | NTLM_NEG_NTLM | NTLM_TARGET_DOMAIN;
    type2.flags = flags;

    FUNC13(type2.challenge, 0x7f, sizeof(type2.challenge));
    type2.targetname = FUNC14(target);
    type2.targetinfo.data = "\x00\x00";
    type2.targetinfo.length = 2;

    ret = FUNC7(&type2, &data);
    if (ret)
	FUNC0(1, "heim_ntlm_encode_type2");

    FUNC13(&type2, 0, sizeof(type2));

    ret = FUNC4(&data, &type2);
    FUNC1(data.data);
    if (ret)
	FUNC0(1, "heim_ntlm_decode_type2");

    FUNC10(&type2);

    return 0;
}