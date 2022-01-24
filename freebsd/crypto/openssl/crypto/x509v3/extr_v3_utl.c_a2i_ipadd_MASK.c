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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char) ; 

int FUNC3(unsigned char *ipout, const char *ipasc)
{
    /* If string contains a ':' assume IPv6 */

    if (FUNC2(ipasc, ':')) {
        if (!FUNC1(ipout, ipasc))
            return 0;
        return 16;
    } else {
        if (!FUNC0(ipout, ipasc))
            return 0;
        return 4;
    }
}