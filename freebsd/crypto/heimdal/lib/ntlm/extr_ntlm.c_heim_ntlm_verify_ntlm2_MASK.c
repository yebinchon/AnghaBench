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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ time_t ;
struct ntlm_buf {int length; unsigned char* data; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int ENOMEM ; 
 int HNTLM_ERR_AUTH ; 
 int HNTLM_ERR_INVALID_LENGTH ; 
 int HNTLM_ERR_TIME_SKEW ; 
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_LE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ authtimediff ; 
 int FUNC2 (unsigned char*,unsigned char*,int,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC4 (void const*,size_t,char const*,char const*,unsigned char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC11 (int) ; 
 scalar_t__ FUNC12 (unsigned char*,unsigned char*,int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

int
FUNC15(const void *key, size_t len,
		       const char *username,
		       const char *target,
		       time_t now,
		       const unsigned char serverchallenge[8],
		       const struct ntlm_buf *answer,
		       struct ntlm_buf *infotarget,
		       unsigned char ntlmv2[16])
{
    krb5_error_code ret;
    unsigned char clientanswer[16];
    unsigned char clientnonce[8];
    unsigned char serveranswer[16];
    krb5_storage *sp;
    time_t authtime;
    uint32_t temp;
    uint64_t t;
    int code;

    infotarget->length = 0;
    infotarget->data = NULL;

    if (answer->length < 16)
	return HNTLM_ERR_INVALID_LENGTH;

    if (now == 0)
	now = FUNC14(NULL);

    /* calculate ntlmv2 key */

    FUNC4(key, len, username, target, ntlmv2);

    /* calculate and build ntlmv2 answer */

    sp = FUNC7(answer->data, answer->length);
    if (sp == NULL)
	return ENOMEM;
    FUNC10(sp, KRB5_STORAGE_BYTEORDER_LE);

    FUNC0(FUNC8(sp, clientanswer, 16), 16);

    FUNC0(FUNC5(sp, &temp), 0);
    FUNC0(temp, 0x00000101);
    FUNC0(FUNC5(sp, &temp), 0);
    FUNC0(temp, 0);
    /* timestamp le 64 bit ts */
    FUNC0(FUNC5(sp, &temp), 0);
    t = temp;
    FUNC0(FUNC5(sp, &temp), 0);
    t |= ((uint64_t)temp)<< 32;

    authtime = FUNC13(t);

    if (FUNC1((int)(authtime - now)) > authtimediff) {
	ret = HNTLM_ERR_TIME_SKEW;
	goto out;
    }

    /* client challenge */
    FUNC0(FUNC8(sp, clientnonce, 8), 8);

    FUNC0(FUNC5(sp, &temp), 0); /* unknown */

    /* should really unparse the infotarget, but lets pick up everything */
    infotarget->length = answer->length - FUNC9(sp, 0, SEEK_CUR);
    infotarget->data = FUNC11(infotarget->length);
    if (infotarget->data == NULL) {
	ret = ENOMEM;
	goto out;
    }
    FUNC0(FUNC8(sp, infotarget->data, infotarget->length),
	  infotarget->length);
    /* XXX remove the unknown ?? */
    FUNC6(sp);
    sp = NULL;

    if (answer->length < 16) {
	ret = HNTLM_ERR_INVALID_LENGTH;
	goto out;
    }

    ret = FUNC2(ntlmv2,
				((unsigned char *)answer->data) + 16, answer->length - 16,
				serverchallenge,
				serveranswer);
    if (ret)
	goto out;

    if (FUNC12(serveranswer, clientanswer, 16) != 0) {
	FUNC3(infotarget);
	return HNTLM_ERR_AUTH;
    }

    return 0;
out:
    FUNC3(infotarget);
    if (sp)
	FUNC6(sp);
    return ret;
}