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
typedef  int /*<<< orphan*/ * hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,char*,...) ; 

__attribute__((used)) static int
FUNC7(const char *fn, hx509_private_key *key)
{
    hx509_private_key *keys;
    hx509_certs certs;
    int ret;

    *key = NULL;

    ret = FUNC5(context, fn, 0, NULL, &certs);
    if (ret)
	FUNC6(context, 1, ret, "hx509_certs_init: %s", fn);

    ret = FUNC1(context, certs, &keys);
    FUNC4(&certs);
    if (ret)
	FUNC6(context, 1, ret, "hx509_certs_keys_get");
    if (keys[0] == NULL)
	FUNC3(1, "no keys in key store: %s", fn);

    *key = FUNC2(keys[0]);
    FUNC0(context, keys);

    return 0;
}