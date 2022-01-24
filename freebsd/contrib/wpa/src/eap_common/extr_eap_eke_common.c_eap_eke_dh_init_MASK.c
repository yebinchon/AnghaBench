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
typedef  int u8 ;
struct dh_group {int /*<<< orphan*/  prime_len; int /*<<< orphan*/  prime; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC1 (int) ; 
 struct dh_group* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 

int FUNC5(u8 group, u8 *ret_priv, u8 *ret_pub)
{
	int generator;
	u8 gen;
	const struct dh_group *dh;

	generator = FUNC1(group);
	dh = FUNC2(group);
	if (generator < 0 || generator > 255 || !dh)
		return -1;
	gen = generator;

	if (FUNC0(gen, dh->prime, dh->prime_len, ret_priv,
			   ret_pub) < 0)
		return -1;
	FUNC4(MSG_DEBUG, "EAP-EKE: DH private value",
			ret_priv, dh->prime_len);
	FUNC3(MSG_DEBUG, "EAP-EKE: DH public value",
		    ret_pub, dh->prime_len);

	return 0;
}