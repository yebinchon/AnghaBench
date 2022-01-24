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
struct ntlm_buf {int length; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int HNTLM_ERR_INVALID_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (struct ntlm_buf*) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 

int
FUNC8(void *key, size_t len,
			  struct ntlm_buf *ntlmResponse,
			  struct ntlm_buf *session)
{
    unsigned int hmaclen;
    HMAC_CTX *c;

    if (ntlmResponse->length <= 16)
        return HNTLM_ERR_INVALID_LENGTH;

    session->data = FUNC7(16);
    if (session->data == NULL)
	return ENOMEM;
    session->length = 16;

    /* Note: key is the NTLMv2 key */
    c = FUNC2();
    if (c == NULL) {
	FUNC6(session);
	return ENOMEM;
    }
    FUNC4(c, key, len, FUNC0(), NULL);
    FUNC5(c, ntlmResponse->data, 16);
    FUNC3(c, session->data, &hmaclen);
    FUNC1(c);

    return 0;
}