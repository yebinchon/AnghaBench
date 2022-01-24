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
struct ntlm_buf {int /*<<< orphan*/ * data; scalar_t__ length; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ MD4_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (struct ntlm_buf*) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 

int
FUNC8(void *key, size_t len,
			  struct ntlm_buf *session)
{
    EVP_MD_CTX *m;

    session->length = MD4_DIGEST_LENGTH;
    session->data = FUNC7(session->length);
    if (session->data == NULL) {
	session->length = 0;
	return ENOMEM;
    }

    m = FUNC3();
    if (m == NULL) {
	FUNC6(session);
	return ENOMEM;
    }
    FUNC1(m, FUNC5(), NULL);
    FUNC2(m, key, len);
    FUNC0(m, session->data, NULL);
    FUNC4(m);

    return 0;
}