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
typedef  int /*<<< orphan*/  acl_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_NFS4 ; 
 int /*<<< orphan*/  _PC_ACL_NFS4 ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

int
FUNC2(int fd, acl_t acl)
{

	if (FUNC1(fd, _PC_ACL_NFS4) == 1)
		return (FUNC0(fd, acl, ACL_TYPE_NFS4));

	return (FUNC0(fd, acl, ACL_TYPE_ACCESS));
}