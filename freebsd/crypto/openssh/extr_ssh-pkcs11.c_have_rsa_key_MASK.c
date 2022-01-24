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
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(const RSA *rsa)
{
	const BIGNUM *rsa_n, *rsa_e;

	FUNC0(rsa, &rsa_n, &rsa_e, NULL);
	return rsa_n != NULL && rsa_e != NULL;
}