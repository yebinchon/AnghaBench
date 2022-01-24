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
struct worker {int dummy; } ;
struct comm_reply {int dummy; } ;
struct comm_point {int dummy; } ;
typedef  enum acl_access { ____Placeholder_acl_access } acl_access ;

/* Variables and functions */
 int /*<<< orphan*/  acl_deny_non_local ; 
 int /*<<< orphan*/  acl_refuse_non_local ; 
 int FUNC0 (struct comm_point*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct worker*,struct comm_reply*) ; 

__attribute__((used)) static int
FUNC1(struct comm_point* c, enum acl_access acl,
	struct worker* worker, struct comm_reply* repinfo)
{
	return FUNC0(c, acl, acl_deny_non_local, acl_refuse_non_local, worker, repinfo);
}