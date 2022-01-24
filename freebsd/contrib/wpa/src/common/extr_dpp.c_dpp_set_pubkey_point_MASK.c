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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static EVP_PKEY * FUNC5(EVP_PKEY *group_key,
				       const u8 *buf, size_t len)
{
	EC_KEY *eckey;
	const EC_GROUP *group;
	EVP_PKEY *pkey = NULL;

	if (len & 1)
		return NULL;

	eckey = FUNC2(group_key);
	if (!eckey) {
		FUNC4(MSG_ERROR,
			   "DPP: Could not get EC_KEY from group_key");
		return NULL;
	}

	group = FUNC1(eckey);
	if (group)
		pkey = FUNC3(group, buf, buf + len / 2,
						  len / 2);
	else
		FUNC4(MSG_ERROR, "DPP: Could not get EC group");

	FUNC0(eckey);
	return pkey;
}