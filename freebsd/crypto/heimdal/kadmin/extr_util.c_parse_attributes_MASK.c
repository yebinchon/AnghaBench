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
typedef  int /*<<< orphan*/  krb5_flags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  kdb_attrs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 

int
FUNC3 (const char *resp, krb5_flags *attr, int *mask, int bit)
{
    krb5_flags tmp = *attr;

    if (FUNC2(resp, &tmp) == 0) {
	*attr = tmp;
	if (mask)
	    *mask |= bit;
	return 0;
    } else if(*resp == '?') {
	FUNC1 (kdb_attrs, stderr);
    } else {
	FUNC0 (stderr, "Unable to parse \"%s\"\n", resp);
    }
    return -1;
}