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
 scalar_t__ FUNC0 (void const*,char const*) ; 

__attribute__((used)) static krb5_boolean
FUNC1(const void *data, const char *appl_version)
{
    return FUNC0(data, appl_version) == 0;
}