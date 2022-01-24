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
struct dpp_authentication {int /*<<< orphan*/  c_sign_key; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dpp_authentication *auth, EVP_PKEY *csign)
{
	unsigned char *der = NULL;
	int der_len;

	der_len = FUNC1(csign, &der);
	if (der_len <= 0)
		return;
	FUNC3(auth->c_sign_key);
	auth->c_sign_key = FUNC2(der, der_len);
	FUNC0(der);
}