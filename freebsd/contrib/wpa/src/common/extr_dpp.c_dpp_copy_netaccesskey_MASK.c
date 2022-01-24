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
struct dpp_authentication {int /*<<< orphan*/  net_access_key; int /*<<< orphan*/  own_protocol_key; } ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dpp_authentication *auth)
{
	unsigned char *der = NULL;
	int der_len;
	EC_KEY *eckey;

	eckey = FUNC1(auth->own_protocol_key);
	if (!eckey)
		return;

	der_len = FUNC3(eckey, &der);
	if (der_len <= 0) {
		FUNC0(eckey);
		return;
	}
	FUNC5(auth->net_access_key);
	auth->net_access_key = FUNC4(der, der_len);
	FUNC2(der);
	FUNC0(eckey);
}