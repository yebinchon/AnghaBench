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
typedef  int krb5_boolean ;

/* Variables and functions */
 int FUNC0 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static krb5_boolean
FUNC1(const void *data, const char *appl_version)
{
    unsigned minor;
    if(FUNC0(appl_version, "KADM0.%u", &minor) != 1)
	return 0;
    /*XXX*/
    *(unsigned*)(intptr_t)data = minor;
    return 1;
}