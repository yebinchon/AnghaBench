#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_4__ {int /*<<< orphan*/  rsa; } ;
struct TYPE_5__ {TYPE_1__ private_key; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static BIGNUM *
FUNC3(hx509_context context,
		 hx509_private_key key,
		 const char *type)
{
    const BIGNUM *n;

    if (FUNC2(type, "rsa-modulus") == 0) {
	FUNC1(key->private_key.rsa, &n, NULL, NULL);
    } else if (FUNC2(type, "rsa-exponent") == 0) {
	FUNC1(key->private_key.rsa, NULL, &n, NULL);
    } else
	return NULL;
    return FUNC0(n);
}