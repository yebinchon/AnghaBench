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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  kadm5_ret_t ;

/* Variables and functions */
 scalar_t__ acl_units ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,char*,size_t) ; 

kadm5_ret_t
FUNC2(uint32_t privs, char *string, size_t len)
{
    if(privs == 0)
	FUNC0(string, "none", len);
    else
	FUNC1(privs, acl_units + 1, string, len);
    return 0;
}