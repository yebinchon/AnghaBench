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
typedef  int uint64_t ;
struct ntlm_buf {unsigned char* data; int length; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;
struct TYPE_4__ {unsigned char* data; int length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  clientchallenge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int HNTLM_ERR_RAND ; 
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_LE ; 
 int FUNC1 (unsigned char*,int) ; 
 int FUNC2 (unsigned char*,unsigned char*,int,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (void const*,size_t,char const*,char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(const void *key, size_t len,
			  const char *username,
			  const char *target,
			  const unsigned char serverchallenge[8],
			  const struct ntlm_buf *infotarget,
			  unsigned char ntlmv2[16],
			  struct ntlm_buf *answer)
{
    krb5_error_code ret;
    krb5_data data;
    unsigned char ntlmv2answer[16];
    krb5_storage *sp;
    unsigned char clientchallenge[8];
    uint64_t t;
    int code;

    t = FUNC12(FUNC11(NULL));

    if (FUNC1(clientchallenge, sizeof(clientchallenge)) != 1)
	return HNTLM_ERR_RAND;

    /* calculate ntlmv2 key */

    FUNC3(key, len, username, target, ntlmv2);

    /* calculate and build ntlmv2 answer */

    sp = FUNC5();
    if (sp == NULL)
	return ENOMEM;
    FUNC7(sp, KRB5_STORAGE_BYTEORDER_LE);

    FUNC0(FUNC10(sp, 0x00000101), 0);
    FUNC0(FUNC10(sp, 0), 0);
    /* timestamp le 64 bit ts */
    FUNC0(FUNC10(sp, t & 0xffffffff), 0);
    FUNC0(FUNC10(sp, t >> 32), 0);

    FUNC0(FUNC9(sp, clientchallenge, 8), 8);

    FUNC0(FUNC10(sp, 0), 0);  /* unknown but zero will work */
    FUNC0(FUNC9(sp, infotarget->data, infotarget->length),
	  infotarget->length);
    FUNC0(FUNC10(sp, 0), 0); /* unknown but zero will work */

    FUNC0(FUNC8(sp, &data), 0);
    FUNC6(sp);
    sp = NULL;

    code = FUNC2(ntlmv2, data.data, data.length, serverchallenge, ntlmv2answer);
    if (code) {
	FUNC4(&data);
	return code;
    }

    sp = FUNC5();
    if (sp == NULL) {
	FUNC4(&data);
	return ENOMEM;
    }

    FUNC0(FUNC9(sp, ntlmv2answer, 16), 16);
    FUNC0(FUNC9(sp, data.data, data.length), data.length);
    FUNC4(&data);

    FUNC0(FUNC8(sp, &data), 0);
    FUNC6(sp);
    sp = NULL;

    answer->data = data.data;
    answer->length = data.length;

    return 0;
out:
    if (sp)
	FUNC6(sp);
    return ret;
}