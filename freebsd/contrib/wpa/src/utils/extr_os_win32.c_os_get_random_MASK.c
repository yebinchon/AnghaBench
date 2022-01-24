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
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 

int FUNC3(unsigned char *buf, size_t len)
{
	HCRYPTPROV prov;
	BOOL ret;

	if (!FUNC0(&prov, NULL, NULL, PROV_RSA_FULL,
				 CRYPT_VERIFYCONTEXT))
		return -1;

	ret = FUNC1(prov, len, buf);
	FUNC2(prov, 0);

	return ret ? 0 : -1;
}