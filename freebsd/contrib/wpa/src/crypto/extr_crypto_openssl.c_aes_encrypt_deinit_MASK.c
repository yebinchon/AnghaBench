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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC5(void *ctx)
{
	EVP_CIPHER_CTX *c = ctx;
	u8 buf[16];
	int len = sizeof(buf);
	if (FUNC3(c, buf, &len) != 1) {
		FUNC4(MSG_ERROR, "OpenSSL: EVP_EncryptFinal_ex failed: "
			   "%s", FUNC0(FUNC1(), NULL));
	}
	if (len != 0) {
		FUNC4(MSG_ERROR, "OpenSSL: Unexpected padding length %d "
			   "in AES encrypt", len);
	}
	FUNC2(c);
}