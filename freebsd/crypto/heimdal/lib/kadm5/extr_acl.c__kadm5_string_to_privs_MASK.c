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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  kadm5_ret_t ;

/* Variables and functions */
 int /*<<< orphan*/  KADM5_FAILURE ; 
 int /*<<< orphan*/  acl_units ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC1(const char *s, uint32_t* privs)
{
    int flags;
    flags = FUNC0(s, acl_units, 0);
    if(flags < 0)
	return KADM5_FAILURE;
    *privs = flags;
    return 0;
}