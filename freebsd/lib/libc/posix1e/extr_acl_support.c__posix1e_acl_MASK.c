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
typedef  scalar_t__ acl_type_t ;
typedef  int /*<<< orphan*/  acl_t ;

/* Variables and functions */
 scalar_t__ ACL_BRAND_POSIX ; 
 scalar_t__ ACL_TYPE_ACCESS ; 
 scalar_t__ ACL_TYPE_DEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(acl_t acl, acl_type_t type)
{

	if (FUNC0(acl) != ACL_BRAND_POSIX)
		return (0);

	return ((type == ACL_TYPE_ACCESS) || (type == ACL_TYPE_DEFAULT));
}