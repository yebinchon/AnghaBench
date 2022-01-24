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
struct ntlm_buf {scalar_t__ length; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int HNTLM_ERR_CRYPTO ; 
 int HNTLM_ERR_INVALID_LENGTH ; 
 scalar_t__ MD4_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (struct ntlm_buf*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ntlm_buf*,int /*<<< orphan*/ ,int) ; 

int
FUNC8(struct ntlm_buf *baseKey,
		       struct ntlm_buf *encryptedSession,
		       struct ntlm_buf *session)
{
    EVP_CIPHER_CTX *c;

    FUNC7(session, 0, sizeof(*session));

    if (baseKey->length != MD4_DIGEST_LENGTH)
	return HNTLM_ERR_INVALID_LENGTH;

    session->length = MD4_DIGEST_LENGTH;
    session->data = FUNC6(session->length);
    if (session->data == NULL) {
	session->length = 0;
	return ENOMEM;
    }
    c = FUNC1();
    if (c == NULL) {
	FUNC5(session);
	return ENOMEM;
    }

    if (FUNC3(c, FUNC4(), NULL, baseKey->data, NULL, 0) != 1) {
	FUNC0(c);
	FUNC5(session);
	return HNTLM_ERR_CRYPTO;
    }

    FUNC2(c, session->data, encryptedSession->data, session->length);
    FUNC0(c);

    return 0;
}