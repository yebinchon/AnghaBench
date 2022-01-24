#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ioc_user; } ;
struct smb_ctx {TYPE_1__ ct_ssn; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ SMB_MAXUSERNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

int
FUNC3(struct smb_ctx *ctx, const char *name)
{
	if (FUNC2(name) > SMB_MAXUSERNAMELEN) {
		FUNC1("user name '%s' too long", 0, name);
		return ENAMETOOLONG;
	}
	FUNC0(ctx->ct_ssn.ioc_user, name);
	return 0;
}