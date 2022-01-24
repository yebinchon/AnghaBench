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
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,char const*,...) ; 

__attribute__((used)) static int
FUNC1 (krb5_context context,
		 const char *realm,
		 const char *name,
		 int def)
{
    int ret;

    ret = FUNC0 (context, NULL,
				"realms",
				realm,
				name,
				NULL);
    if (ret >= 0)
	return ret;
    ret = FUNC0 (context, NULL,
				"libdefaults",
				name,
				NULL);
    if (ret >= 0)
	return ret;
    return def;
}