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
struct ntlm_buf {int /*<<< orphan*/ * data; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  MD5_DIGEST_LENGTH ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ntlm_buf*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(const char *password, struct ntlm_buf *key)
{
    struct ntlm_buf buf;
    EVP_MD_CTX *m;
    int ret;

    key->data = FUNC8(MD5_DIGEST_LENGTH);
    if (key->data == NULL)
	return ENOMEM;
    key->length = MD5_DIGEST_LENGTH;

    ret = FUNC6(password, 0, &buf);
    if (ret) {
	FUNC7(key);
	return ret;
    }

    m = FUNC3();
    if (m == NULL) {
	FUNC7(key);
	FUNC7(&buf);
	return ENOMEM;
    }

    FUNC1(m, FUNC5(), NULL);
    FUNC2(m, buf.data, buf.length);
    FUNC0(m, key->data, NULL);
    FUNC4(m);

    FUNC7(&buf);
    return 0;
}